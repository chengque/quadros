#!/usr/bin/env python
import rospy
from std_msgs.msg import String,Float64,Float64MultiArray
from uavinstance import UAV
import tf_conversions
from geometry_msgs.msg import PoseStamped,TwistStamped,Quaternion,Vector3
import matplotlib.pyplot as plt
from Control import PIDUtility
import numpy as np
import time
import math
import copy
from Predictor import *
from collections import deque



class stabilizer:
	def __init__(self,id=""):
		self.uav_id=id
		self.position=Vector3()
		self.velocity=Vector3()
		self.ppidx=PIDUtility(self.position.x)
		self.vpidx=PIDUtility(self.velocity.x)

		self.ppidy=PIDUtility(self.position.y)
		self.vpidy=PIDUtility(self.velocity.y)

		self.ppidz=PIDUtility(self.position.z)
		self.vpidz=PIDUtility(self.velocity.z)
		self.qx=deque(np.zeros(10),maxlen=10)
		self.qy=deque(np.zeros(10),maxlen=10)
		self.qvx = deque(np.zeros(10), maxlen=10)
		self.qt=deque(np.zeros(10),maxlen=10)
		self.lv=0
		self.lv2=0
		self.lp=0
		self.lp2=0

		self.getfeed=False


	def poscallback(self,data):
		self.lp2=self.lp
		self.lp=self.position
		self.position=data.pose.position
		self.att=tf_conversions.transformations.euler_from_quaternion([data.pose.orientation.x,data.pose.orientation.y,data.pose.orientation.z,data.pose.orientation.w])

	def velcallback(self,data):
		self.lv2=self.lv
		self.lv=self.velocity
		self.velocity=data.twist.linear
		self.getfeed=True


	def poscontrolx(self,parm,dr,x,dt,lim,ddx=0):
		vr=self.ppidx.iteratewithcorrection(parm[0],x[0],dr,ddx,dt)
		#vr=self.ppidx.iterate(parm[0],x[0],dr,dt)
		vlim=5
		if vr>vlim:
			vr=vlim
		if vr<-vlim:
			vr=-vlim


		tr=self.vpidx.iterate(parm[1],x[1],vr,dt)
		#tr=self.vpidx.iteratewithcorrection(parm[1],x[1],vr,ddx,dt)
		if tr>lim[1]:
			tr=lim[1]
		if tr<lim[0]:
			tr=lim[0]
		return vr,tr



	def poscontroly(self,parm,dr,x,dt,lim,ddx=0):
		vr=self.ppidy.iterate(parm[0],x[0],dr,dt)
		vlim=5
		if vr>vlim:
			vr=vlim
		if vr<-vlim:
			vr=-vlim

		tr=self.vpidy.iteratewithcorrection(parm[1],x[1],vr,ddx,dt)
		if tr>lim[1]:
			tr=lim[1]
		if tr<lim[0]:
			tr=lim[0]
		return vr,tr

	def poscontrolz(self,parm,dr,x,dt,lim):
		vr=self.ppidz.iterate(parm[0],x[0],dr,dt)
		vlim=5
		if vr>vlim:
			vr=vlim
		if vr<-vlim:
			vr=-vlim


		tr=self.vpidz.iterate(parm[1],x[1],vr,dt)+0.6
		if tr>lim[1]:
			tr=lim[1]
		if tr<lim[0]:
			tr=lim[0]
		return vr,tr

	def control(self,throt,att):
		rospy.init_node('offboard_control', anonymous=True)
		self.uav_id=rospy.get_param("~id","")
		rospy.loginfo(self.uav_id+" master:start offboard control..")
		rate=rospy.Rate(30)
		rate.sleep()

		pub=rospy.Publisher(self.uav_id+"/cmd/throttle", Float64,queue_size=10)
		pubrr=rospy.Publisher(self.uav_id+"/cmd/ref_pos", Vector3,queue_size=10)
		pubvr=rospy.Publisher(self.uav_id+"/cmd/ref_vel", Vector3,queue_size=10)
		pubva=rospy.Publisher(self.uav_id+"/cmd/ref_att", Vector3,queue_size=10)
		pub1=rospy.Publisher(self.uav_id+"/cmd/orentation", Quaternion,queue_size=10)

		rospy.Subscriber(self.uav_id+"/mavros/local_position/pose", PoseStamped, self.poscallback)
		rospy.Subscriber(self.uav_id+"/mavros/local_position/velocity", TwistStamped, self.velcallback)
		time.sleep(5)
		
		now=rospy.get_rostime()
		last_request=now.to_sec()-0.02
		ref_pos=Vector3()
		ref_vel=Vector3()
		ref_att=Vector3()
		parm=np.zeros((2,3))
		i=0

		fl=open("/home/dongwei/workspace/catkin_ws/src/offboard/scripts/logc.txt",'w')


		while not (rospy.is_shutdown()):
			itae={}
			for i in range(1,25):
				for j in range(1,20):
					print i,j
					itime=rospy.get_rostime().to_sec()
					now=0
					loss=0
					maxe=0
					k=0
					pp=2+i*0.1;
					pv=0.25+0.01*j;
					fl.write(str([pp,pv]))
					while(now<15):
						k=k+1

						now=rospy.get_rostime().to_sec()-itime
						dt=now-last_request
						last_request=now
						if(dt<0.01):
							dt=0.01
						parm[0]=[pp,0,0]
						parm[1]=[pv,0.01,0]
						ref_pos.z=5
						ddx=0
						ddy=0
						if(now<5):
							ref_pos.x=0
							ref_pos.y=0
							parm[0]=[2.3,0,0]
							parm[1]=[0.36,0.01,0]
						elif(now<10):
							ref_pos.x=1
							ref_pos.y=0.2
						else:
							ref_pos.x=0
							ref_pos.y=0

						vz,tr=self.poscontrolz(parm,ref_pos.z,[self.position.z,self.velocity.z],dt,[0.1,0.8])

						vx,xr=self.poscontrolx(parm,ref_pos.x,[self.position.x,self.velocity.x],dt,[-0.5,0.5])
						vy,yr=self.poscontroly(parm,ref_pos.y,[self.position.y,self.velocity.y],dt,[-0.5,0.5])
						ref_vel.x=vx
						ref_vel.y=vy
						ref_vel.z=vz
						
						pub.publish(tr)
						pubvr.publish(ref_vel)
						pubrr.publish(ref_pos)

						q=tf_conversions.transformations.quaternion_from_euler(-yr,xr,0)
						ref_att.x=-yr
						ref_att.y=xr
						pubva.publish(ref_att)
						self.qx.popleft()
						self.qx.append(ref_att.x)
						self.qy.popleft()
						self.qy.append(ref_att.y)
						self.qt.popleft()
						self.qt.append(tr)
						self.qvx.popleft()
						self.qvx.append(ref_vel.x)

						quat=Quaternion()
						quat.x=q[0]
						quat.y=q[1]
						quat.z=q[2]
						quat.w=q[3]
						pub1.publish(quat)
						if(now>5 and abs(ref_pos.x-self.position.x)>2):
							#rospy.loginfo("failed:max error %f,%f"%(abs(ref_pos.x-self.position.x),self.position.x))
							print "failed:max error %f,%f"%(abs(ref_pos.x-self.position.x),self.position.x)
							break
						if(now>5 and self.position.z<3.5):
							#rospy.loginfo("failed:max error %f,%f"%(abs(ref_pos.x-self.position.x),self.position.x))
							print "failed:fall %f"%(self.position.z)
							break
						if(now>5 and now<10):
							loss+=abs(ref_pos.x-self.position.x)*(now-5)
							if(abs(ref_pos.x-self.position.x)>maxe):
								maxe=abs(ref_pos.x-self.position.x)
						if(now>=15):
							itae[maxe+loss]=copy.deepcopy(parm)
							#rospy.loginfo("task over, the time is %f"%(now))
							print "task over, the time is %f, and the loss is :%f"%(now,maxe+loss)
							fl.write(":task over, the time is %f, and the loss is :%f\r\n"%(now,maxe+loss))
							continue
						rate.sleep()
			keys=itae.keys()
			keys.sort()
			p=itae[keys[0]]
			print p
			fl.write(str(p))
			fl.close()
			pub.publish(-100)
			return 

	def controlcorr(self,throt,att):
		#ai=LSR(30,3)
		ai=StateNetwork(45,weightfile="/home/dongwei/workspace/catkin_ws/src/offboard/scripts/weightposref.h5")
		rospy.init_node('offboard_control', anonymous=True)
		self.uav_id=rospy.get_param("~id","")
		rospy.loginfo(self.uav_id+" master:start offboard control..")
		rate=rospy.Rate(30)
		rate.sleep()

		pub=rospy.Publisher(self.uav_id+"/cmd/throttle", Float64,queue_size=10)
		pubrr=rospy.Publisher(self.uav_id+"/cmd/ref_pos", Vector3,queue_size=10)
		pubvr=rospy.Publisher(self.uav_id+"/cmd/ref_vel", Vector3,queue_size=10)
		pubva=rospy.Publisher(self.uav_id+"/cmd/ref_att", Vector3,queue_size=10)
		pub1=rospy.Publisher(self.uav_id+"/cmd/orentation", Quaternion,queue_size=10)

		rospy.Subscriber(self.uav_id+"/mavros/local_position/pose", PoseStamped, self.poscallback)
		rospy.Subscriber(self.uav_id+"/mavros/local_position/velocity", TwistStamped, self.velcallback)
		time.sleep(5)
		
		now=rospy.get_rostime()
		last_request=now.to_sec()-0.02
		ref_pos=Vector3()
		ref_vel=Vector3()
		ref_att=Vector3()
		parm=np.zeros((2,3))
		i=0
		fl=open("/home/dongwei/workspace/catkin_ws/src/offboard/scripts/logcorr.txt",'w')

		while not (rospy.is_shutdown()):
			itae={}
			for i in range(1,20):
				for j in range(1,15):
					print i,j
					itime=rospy.get_rostime().to_sec()
					now=0
					loss=0
					maxe=0

					pp=2 + i * 0.1;
					pv=0.25 + 0.01 * j;

					fl.write(str([pp,pv]))

					while(now<15):
						now=rospy.get_rostime().to_sec()-itime
						dt=now-last_request
						last_request=now
						if(dt<0.01):
							dt=0.01
						parm[0]=[pp,0,0]
						parm[1]=[pv,0.01,0]
						ref_pos.z=5
						ddx=0
						ddy=0
						
						if(now<5):
							ref_pos.x=0
							ref_pos.y=0
							parm[0]=[2.3,0,0]
							parm[1]=[0.36,0.01,0]
						elif(now<10):
							ref_pos.x=1
							ref_pos.y=0.2
						else:
							ref_pos.x=0
							ref_pos.y=0

						if(now>=5):
							tx=np.zeros((1,45))
							#print [1,self.velocity.x-self.lv2.x,self.att[0],self.att[1]],np.asarray(self.qx),np.asarray(self.qy),np.asarray(self.qt)
							tx[0]=np.hstack(([1,float(self.position.x-self.lp2.x),float(self.velocity.x), float(self.att[0]),float(self.att[1])],np.asarray(self.qvx),np.asarray(self.qx),np.asarray(self.qy),np.asarray(self.qt)))
							ddx=ai.predict(tx)

						vz,tr=self.poscontrolz(parm,ref_pos.z,[self.position.z,self.velocity.z],dt,[0.1,0.8])

						vx,xr=self.poscontrolx(parm,ref_pos.x,[self.position.x,self.velocity.x],dt,[-0.5,0.5],ddx)
						vy,yr=self.poscontroly(parm,ref_pos.y,[self.position.y,self.velocity.y],dt,[-0.5,0.5],ddy)
						ref_vel.x=vx
						ref_vel.y=vy
						ref_vel.z=vz
						
						pub.publish(tr)
						pubvr.publish(ref_vel)
						pubrr.publish(ref_pos)

						q=tf_conversions.transformations.quaternion_from_euler(-yr,xr,0)
						ref_att.x=-yr
						ref_att.y=xr
						pubva.publish(ref_att)

						self.qx.popleft()
						self.qx.append(float(ref_att.x))
						self.qy.popleft()
						self.qy.append(float(ref_att.y))
						self.qt.popleft()
						self.qt.append(float(tr))
						self.qvx.popleft()
						self.qvx.append(float(ref_vel.x))

						quat=Quaternion()
						quat.x=q[0]
						quat.y=q[1]
						quat.z=q[2]
						quat.w=q[3]
						pub1.publish(quat)
						if(now>5 and abs(ref_pos.x-self.position.x)>2):
							#rospy.loginfo("failed:max error %f,%f"%(abs(ref_pos.x-self.position.x),self.position.x))
							print "failed:max error %f,%f"%(abs(ref_pos.x-self.position.x),self.position.x)
							break
						if(now>5 and self.position.z<3.5):
							#rospy.loginfo("failed:max error %f,%f"%(abs(ref_pos.x-self.position.x),self.position.x))
							print "failed:fall %f"%(self.position.z)
							break
						if(now>5 and now<10):
							loss+=abs(ref_pos.x-self.position.x)*(now-5)
							if(abs(ref_pos.x-self.position.x)>maxe):
								maxe=abs(ref_pos.x-self.position.x)
						if(now>=15):
							itae[maxe+loss]=copy.deepcopy(parm)
							#rospy.loginfo("task over, the time is %f"%(now))
							print "task over, the time is %f, and the loss is :%f"%(now,maxe+loss)
							fl.write(":task over, the time is %f, and the loss is :%f\r\n"%(now,maxe+loss))
							continue
						rate.sleep()
			keys=itae.keys()
			keys.sort()
			p=itae[keys[0]]
			print p
			fl.write(str(p))
			fl.close()
			pub.publish(-100)
			return 


	def controlonce(self,throt,att):
		rospy.init_node('offboard_control', anonymous=True)
		self.uav_id=rospy.get_param("~id","")
		rospy.loginfo(self.uav_id+" master:start offboard control..")
		rate=rospy.Rate(30)
		rate.sleep()

		pub=rospy.Publisher(self.uav_id+"/cmd/throttle", Float64,queue_size=10)
		pubrr=rospy.Publisher(self.uav_id+"/cmd/ref_pos", Vector3,queue_size=10)
		pubvr=rospy.Publisher(self.uav_id+"/cmd/ref_vel", Vector3,queue_size=10)
		pubva=rospy.Publisher(self.uav_id+"/cmd/ref_att", Vector3,queue_size=10)
		pub1=rospy.Publisher(self.uav_id+"/cmd/orentation", Quaternion,queue_size=10)

		rospy.Subscriber(self.uav_id+"/mavros/local_position/pose", PoseStamped, self.poscallback)
		rospy.Subscriber(self.uav_id+"/mavros/local_position/velocity", TwistStamped, self.velcallback)
		time.sleep(5)
		
		now=rospy.get_rostime()
		last_request=now.to_sec()-0.02
		ref_pos=Vector3()
		ref_vel=Vector3()
		ref_att=Vector3()
		parm=np.zeros((2,3))
		i=0
		itime=rospy.get_rostime().to_sec()

		while not (rospy.is_shutdown()):
			now=rospy.get_rostime().to_sec()-itime
			dt=now-last_request
			last_request=now
			if(dt<0.01):
				dt=0.01
			parm[0]=[2.3,0,0]
			parm[1]=[0.31,0.01,0]
			ref_pos.z=2
			i=i+1
			if(i>10000):
				i=10000
			if(now<5):
				ref_pos.x=0
				ref_pos.y=0
			else:
				ref_pos.x=1
				ref_pos.y=0

			vz,tr=self.poscontrolz(parm,ref_pos.z,[self.position.z,self.velocity.z],dt,[0.1,0.8])

			vx,xr=self.poscontrolx(parm,ref_pos.x,[self.position.x,self.velocity.x],dt,[-0.5,0.5])
			vy,yr=self.poscontroly(parm,ref_pos.y,[self.position.y,self.velocity.y],dt,[-0.5,0.5])
			ref_vel.x=vx
			ref_vel.y=vy
			ref_vel.z=vz
			
			pub.publish(tr)
			pubvr.publish(ref_vel)
			pubrr.publish(ref_pos)

			q=tf_conversions.transformations.quaternion_from_euler(-yr,xr,0)
			ref_att.x=-yr
			ref_att.y=xr
			pubva.publish(ref_att)

			self.qx.popleft()
			self.qx.append(ref_att.x)
			self.qy.popleft()
			self.qy.append(ref_att.y)
			self.qt.popleft()
			self.qt.append(tr)

			quat=Quaternion()
			quat.x=q[0]
			quat.y=q[1]
			quat.z=q[2]
			quat.w=q[3]
			pub1.publish(quat)
			rate.sleep()

	def controlcorronce(self,throt,att):
		#ai=LSR(30,3)
		ai = StateNetwork(45, weightfile="/home/dongwei/workspace/catkin_ws/src/offboard/scripts/weightposref.h5")
		rospy.init_node('offboard_control', anonymous=True)
		self.uav_id=rospy.get_param("~id","")
		rospy.loginfo(self.uav_id+" master:start offboard control..")
		rate=rospy.Rate(100)
		rate.sleep()

		pub=rospy.Publisher(self.uav_id+"/cmd/throttle", Float64,queue_size=10)
		pubrr=rospy.Publisher(self.uav_id+"/cmd/ref_pos", Vector3,queue_size=10)
		pubvr=rospy.Publisher(self.uav_id+"/cmd/ref_vel", Vector3,queue_size=10)
		pubva=rospy.Publisher(self.uav_id+"/cmd/ref_att", Vector3,queue_size=10)
		pub1=rospy.Publisher(self.uav_id+"/cmd/orentation", Quaternion,queue_size=10)

		rospy.Subscriber(self.uav_id+"/mavros/local_position/pose", PoseStamped, self.poscallback)
		rospy.Subscriber(self.uav_id+"/mavros/local_position/velocity", TwistStamped, self.velcallback)
		time.sleep(5)
		
		now=rospy.get_rostime()
		last_request=now.to_sec()-0.02
		ref_pos=Vector3()
		ref_vel=Vector3()
		ref_att=Vector3()
		parm=np.zeros((2,3))
		i=0
		itime=rospy.get_rostime().to_sec()

		while not (rospy.is_shutdown()):
			while not self.getfeed:
				rate.sleep()
			now=0
			now=rospy.get_rostime().to_sec()-itime
			dt=now-last_request
			last_request=now
			if(dt<0.01):
				dt=0.01

			ref_pos.z=2
			ddx=0
			ddy=0
			parm[0]=[2.4,0,0]
			parm[1]=[0.27,0.01,0]

			#parm[0]=[2.6,0,0]
			#parm[1]=[0.32,0.01,0]
			#parm[0]=[4,0,0]
			#parm[1]=[0.46,0.0,0]
			ref_pos.z=2
			i=i+1
			if(i>10000):
				i=10000
			if(now<5):
				ref_pos.x=0
				ref_pos.y=0
				parm[0] = [2.3, 0, 0]
				parm[1] = [0.44, 0.0, 0]
			elif(now<20):
				ref_pos.x=math.sin(3*now)*i/4000
				ref_pos.y=math.cos(3*now)*i/4000
				ref_pos.x=1
				ref_pos.y=0
			else:
				ref_pos.x = math.sin(3 * now) * i / 4000
				ref_pos.y = math.cos(3 * now) * i / 4000
				if ref_pos.x>0:
					ref_pos.x=0.5
				else:
					ref_pos.x=-0.5
				if ref_pos.y > 0:
					ref_pos.y = 0.5
				else:
					ref_pos.y = -0.5
				ref_pos.x = 1
				ref_pos.y = 0


			if(now>=2.5):
				tx=np.zeros((1,45))
				tx[0]=np.hstack(([1,float(self.position.x-self.lp2.x), float(self.velocity.x),float(self.att[0]),float(self.att[1])],np.asarray(self.qvx),np.asarray(self.qx),np.asarray(self.qy),np.asarray(self.qt)))
				ddx=ai.predict(tx)

			vz,tr=self.poscontrolz(parm,ref_pos.z,[self.position.z,self.velocity.z],dt,[0.1,0.8])

			vx,xr=self.poscontrolx(parm,ref_pos.x,[self.position.x,self.velocity.x],dt,[-0.5,0.5],ddx)
			vy,yr=self.poscontroly(parm,ref_pos.y,[self.position.y,self.velocity.y],dt,[-0.5,0.5],ddy)
			ref_vel.x=vx
			ref_vel.y=vy
			ref_vel.z=vz
			
			pub.publish(tr)
			pubvr.publish(ref_vel)
			pubrr.publish(ref_pos)

			q=tf_conversions.transformations.quaternion_from_euler(-yr,xr,0)
			ref_att.x=-yr
			ref_att.y=xr
			pubva.publish(ref_att)

			self.qx.popleft()
			self.qx.append(float(ref_att.x))
			self.qy.popleft()
			self.qy.append(float(ref_att.y))
			self.qt.popleft()
			self.qt.append(float(tr))
			self.qvx.popleft()
			self.qvx.append(float(ref_vel.x))

			quat=Quaternion()
			quat.x=q[0]
			quat.y=q[1]
			quat.z=q[2]
			quat.w=q[3]
			pub1.publish(quat)
			self.getfeed=False

			rate.sleep()



	def plot(self):
		rospy.init_node('offboard_control', anonymous=True)
		self.uav_id=rospy.get_param("~id")
		rospy.loginfo(self.uav_id+" master:start offboard control..")
		rate=rospy.Rate(20)
		rate.sleep()

		pub=rospy.Publisher(self.uav_id+"/cmd/throttle", Float64,queue_size=10)
		pub1=rospy.Publisher(self.uav_id+"/cmd/orentation", Quaternion,queue_size=10)

		while not (rospy.is_shutdown()):
			pub.publish(0.5)
			q=tf_conversions.transformations.quaternion_from_euler(0.5,0,0)
			quat=Quaternion()
			quat.x=q[0]
			quat.y=q[1]
			quat.z=q[2]
			quat.w=q[3]
			pub1.publish(quat)
			rate.sleep()





if __name__ == '__main__':
	uav=stabilizer()
	#uav.control(0.5,[0,0,0])
	#uav.controlcorronce(0.5,[0,0,0])
	#uav.controlcorr(0.5,[0,0,0])
	uav.controlonce(0.5,[0,0,0])
