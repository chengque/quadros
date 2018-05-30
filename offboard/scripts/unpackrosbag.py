#!/usr/bin/env python
import rosbag
import numpy as np
import matplotlib.pyplot as plt
import tf_conversions
import pickle
import os
#bag=rosbag.Bag("/home/chengque/.ros/test.bag")


class curve:
	def __init__(self):
		self.data=[]
		self.time=[]
	def append(self,msg,t):
		self.data.append(msg)
		self.time.append(t.to_sec())
	def plot(self,plot,m='b'):
		plot.plot(np.asarray(self.time),np.asarray(self.data),m)

class unpacker:
	def __init__(self,path="/home/chengque/.ros/test.bag"):
		self.path=path
		self.bag=rosbag.Bag(path)
		self.data={}
		self.mintime=1e10
	def unpack(self):
		if(os.path.exists(self.path+".pkl")):
			f=open(self.path+".pkl",'rb')
			self.data=pickle.load(f)
			f.close()
			return
		for topic,msg,t in self.bag.read_messages():
			if(not self.data.has_key(topic)):
				self.data[topic]=curve()
				if(t.to_sec()<self.mintime):
					self.mintime=t.to_sec()
			self.data[topic].append(msg,t)

		#f=open(self.path+".pkl",'wb')
		#pickle.dump(self.data,f,protocol=pickle.HIGHEST_PROTOCOL)
		#f.close()
	def sorttime(self,t):
		t=np.asarray(t)
		return t-self.mintime

	def fetch_pos(self,id=""):
		curve=self.data[id+"/mavros/local_position/pose"]
		t=self.sorttime(curve.time)
		x=[d.pose.position.x for d in curve.data]
		y=[d.pose.position.y for d in curve.data]
		z=[d.pose.position.z for d in curve.data]
		self.pos=np.vstack((t,x,y,z))
		return self.pos


	def fetch_pos_ref(self,id=""):
		curve=self.data[id+"/cmd/ref_pos"]
		t=self.sorttime(curve.time)
		x=[d.x for d in curve.data]
		y=[d.y for d in curve.data]
		z=[d.z for d in curve.data]
		self.pos_ref=np.vstack((t,x,y,z))
		return self.pos_ref

	def fetch_vel(self,id=""):
		curve=self.data[id+"/mavros/local_position/velocity"]
		t=self.sorttime(curve.time)
		x=[d.twist.linear.x for d in curve.data]
		y=[d.twist.linear.y for d in curve.data]
		z=[d.twist.linear.z for d in curve.data]
		self.vel=np.vstack((t,x,y,z))
		return self.vel

	def fetch_att(self,id=""):
		curve=self.data[id+"/mavros/local_position/pose"]
		t=self.sorttime(curve.time)
		att=[]
		for d in curve.data:
			att.append(tf_conversions.transformations.euler_from_quaternion([d.pose.orientation.x,d.pose.orientation.y,d.pose.orientation.z,d.pose.orientation.w]))
		x=[d[0] for d in att]
		y=[d[1] for d in att]
		z=[d[2] for d in att]
		self.att=np.vstack((t,x,y,z))
		return self.att

	def fetch_vel_ref(self,id=""):
		curve=self.data[id+"/cmd/ref_vel"]
		t=self.sorttime(curve.time)
		x=[d.x for d in curve.data]
		y=[d.y for d in curve.data]
		z=[d.z for d in curve.data]
		self.vel_ref=np.vstack((t,x,y,z))
		return self.vel_ref

	def fetch_att_ref(self,id=""):
		curve=self.data[id+"/cmd/ref_att"]
		t=self.sorttime(curve.time)
		x=[d.x for d in curve.data]
		y=[d.y for d in curve.data]
		self.att_ref=np.vstack((t,x,y))
		return self.att_ref

	def fetch_thr_ref(self,id=""):
		curve=self.data[id+"/cmd/throttle"]
		t=self.sorttime(curve.time)
		x=[d.data for d in curve.data]
		self.thrust_ref=np.vstack((t,x))
		return self.thrust_ref
