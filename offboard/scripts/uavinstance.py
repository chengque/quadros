#!/usr/bin/env python
import rospy
from std_msgs.msg import String,Float64,Float64MultiArray
from mavros_msgs.msg import State,AttitudeTarget
from mavros_msgs.srv import CommandBool,CommandBoolRequest,CommandBoolResponse
from mavros_msgs.srv import SetMode,SetModeRequest,SetModeResponse
from sensor_msgs.msg import Imu
from geometry_msgs.msg import PoseWithCovarianceStamped,Quaternion
from geometry_msgs.msg import Pose
from geometry_msgs.msg import PoseStamped,TwistStamped,Quaternion
import threading


class UAV:
    def __init__(self,id=""):
        self.current_state=State()
        self.uav_id=id

        self.throttle=Float64()
        self.throttle.data=0.1
        self.attitude=PoseStamped()
        self.attitude.pose.orientation.x=0
        self.attitude.pose.orientation.y=0
        self.attitude.pose.orientation.z=0
        self.attitude.pose.orientation.w=1
        self.position=PoseStamped()
        self.velocity=TwistStamped()

    def statecallback(self,data):
        self.current_state=data

    def poscallback(self,data):
        self.position=data

    def velcallback(self,data):
        self.velocity=data


        

    def throttlecallback(self,data):
        self.throttle=data
    
    def quaternioncallback(self,data):
        self.attitude.pose.orientation=data
        

    def init_offboard(self):
        t=threading.Thread(target=self.thread_offboard)
        t.start()

    def thread_offboard(self):
        rospy.init_node('offboard', anonymous=True)
        self.uav_id=rospy.get_param("~id","")
        rospy.loginfo(self.uav_id+":start offboard control..")
        rate=rospy.Rate(30)
        rate.sleep()


        rospy.Subscriber(self.uav_id+"/cmd/throttle", Float64, self.throttlecallback)
        rospy.Subscriber(self.uav_id+"/cmd/orentation", Quaternion, self.quaternioncallback)

        rospy.Subscriber(self.uav_id+"/mavros/state", State, self.statecallback)
        rospy.Subscriber(self.uav_id+"/mavros/local_position/pose", PoseStamped, self.poscallback)
        rospy.Subscriber(self.uav_id+"/mavros/local_position/velocity", TwistStamped, self.velcallback)
        arming_client=rospy.ServiceProxy(self.uav_id+"/mavros/cmd/arming",CommandBool)
        pub=rospy.Publisher(self.uav_id+"/mavros/setpoint_attitude/att_throttle",Float64,queue_size=10)
        pub1=rospy.Publisher(self.uav_id+"/mavros/setpoint_attitude/attitude",PoseStamped,queue_size=10)
        #pub=rospy.Publisher("/uav2/mavros/setpoint_position/local",PoseStamped,queue_size=10)
        arm_cmd=CommandBoolRequest()
        arm_cmd.value=True

        
        set_mode_client=rospy.ServiceProxy(self.uav_id+"/mavros/set_mode",SetMode)
        offb_set_mode=SetModeRequest()
        offb_set_mode.base_mode=0
        offb_set_mode.custom_mode="OFFBOARD"
        now=rospy.get_rostime()
        last_request=now.secs
        while not (rospy.is_shutdown()):
            if(self.throttle<-1):
                break
            pub.publish(self.throttle)
            pub1.publish(self.attitude)
            #rospy.loginfo(current_state.mode)
            if((self.current_state.mode!="OFFBOARD") and (rospy.get_rostime().secs-last_request>2)):
                rospy.loginfo(self.current_state.mode)
                if(set_mode_client.call(offb_set_mode).success):
                #if(set_mode_client.call(offb_set_mode)==True and offb_set_mode.response.success==True):
                    rospy.loginfo(self.uav_id+" offbrd enabled")
                last_request=rospy.get_rostime().secs
            else:
                if((self.current_state.armed==False) and (rospy.get_rostime().secs-last_request>2)):
                    if (arming_client.call(arm_cmd).success):
                        rospy.loginfo(self.uav_id+" armed")
                	last_request=rospy.get_rostime().secs
            
            rate.sleep()

if __name__ == '__main__':
    uav=UAV()
    uav.thread_offboard()
