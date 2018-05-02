#!/usr/bin/env python
import rospy
from std_msgs.msg import String,Float64
from mavros_msgs.msg import State,AttitudeTarget
from mavros_msgs.srv import CommandBool,CommandBoolRequest,CommandBoolResponse
from mavros_msgs.srv import SetMode,SetModeRequest,SetModeResponse
from sensor_msgs.msg import Imu
from geometry_msgs.msg import PoseWithCovarianceStamped,Quaternion
from geometry_msgs.msg import Pose
from geometry_msgs.msg import PoseStamped

current_state=State()

def talker():
    pub = rospy.Publisher('chatter', String, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        hello_str = "hello world %s" % rospy.get_time()
        rospy.loginfo(hello_str)
        pub.publish(hello_str)
        rate.sleep()

def callback(data):
    global current_state
    current_state=data
    #rospy.loginfo(current_state.mode)

     #rospy.loginfo("hello")
     #rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.pose.position.x)
     #rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.linear_acceleration.x)

def listener():
    global current_state
     # In ROS, nodes are uniquely named. If two nodes with the same
     # node are launched, the previous one is kicked off. The
     # anonymous=True flag means that rospy will choose a unique
     # name for our 'listener' node so that multiple listeners can
     # run simultaneously.
    rospy.init_node('listener', anonymous=True)
    rospy.loginfo("start listenning")
    rate=rospy.Rate(100)
    rate.sleep()

     #rospy.Subscriber("/mavros/imu/data", Imu, callback)
     #rospy.Subscriber("/uav2/mavros/local_position/pose", PoseStamped, callback)
    rospy.Subscriber("/uav2/mavros/state", State, callback)
    arming_client=rospy.ServiceProxy("/uav2/mavros/cmd/arming",CommandBool)
    pub=rospy.Publisher("/uav2/mavros/setpoint_attitude/att_throttle",Float64,queue_size=10)
    pub1=rospy.Publisher("/uav2/mavros/setpoint_attitude/attitude",PoseStamped,queue_size=10)
    #pub=rospy.Publisher("/uav2/mavros/setpoint_position/local",PoseStamped,queue_size=10)
    arm_cmd=CommandBoolRequest()
    arm_cmd.value=True
    
    pose=Float64()
    pose.data=0.6

    att=PoseStamped()
    att.pose.orientation.x=0.5
    att.pose.orientation.y=0.0
    att.pose.orientation.z=0.0
    att.pose.orientation.w=0.866
    '''
    pose=PoseStamped()
    pose.pose.position.x=0
    pose.pose.position.y=0
    pose.pose.position.z=1
    '''
    rospy.loginfo("running")

    
    set_mode_client=rospy.ServiceProxy("/uav2/mavros/set_mode",SetMode)
    offb_set_mode=SetModeRequest()
    offb_set_mode.base_mode=0
    offb_set_mode.custom_mode="OFFBOARD"
    now=rospy.get_rostime()
    last_request=now.secs
    while not (rospy.is_shutdown()):
        pub.publish(pose)
        pub1.publish(att)
        #rospy.loginfo(current_state.mode)
        if((current_state.mode!="OFFBOARD") and (rospy.get_rostime().secs-last_request>2)):
            rospy.loginfo(current_state.mode)
            rospy.loginfo("1")
            if(set_mode_client.call(offb_set_mode).success):
            #if(set_mode_client.call(offb_set_mode)==True and offb_set_mode.response.success==True):
                rospy.loginfo("offbrd enabled")
            last_request=rospy.get_rostime().secs
        else:
            if((current_state.armed==False) and (rospy.get_rostime().secs-last_request>2)):
                rospy.loginfo("2")
                if (arming_client.call(arm_cmd).success):
                    rospy.loginfo("armed")
            	last_request=rospy.get_rostime().secs
        
        rate.sleep()

if __name__ == '__main__':
    listener()