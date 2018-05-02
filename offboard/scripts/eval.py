from Predictor import *
from unpackrosbag import *
import numpy as np
from numpy import linspace
import math
import random
import matplotlib.pyplot as plt

bag=unpacker()
bag.unpack()
starti=10
it=0

def getintervel(dat,dt):
	it=0
	while(dat[0,it]<dt):
		it=it+1
	return dat[:,it:]

pos=getintervel(bag.fetch_pos(),starti)

pos_ref=getintervel(bag.fetch_pos_ref(),starti)

vel=getintervel(bag.fetch_vel(),starti)

vel_ref=getintervel(bag.fetch_vel_ref(),starti)

att=getintervel(bag.fetch_att(),starti)

att_ref=getintervel(bag.fetch_att_ref(),starti)

thr_ref=getintervel(bag.fetch_thr_ref(),starti)

'''
plt.figure()
plt.subplot(311)
plt.plot(pos[0,:],pos[1,:])
plt.plot(pos_ref[0,:],pos_ref[1,:],'r')
plt.grid()
plt.subplot(312)
plt.plot(vel[0,:],vel[1,:])
plt.plot(vel_ref[0,:],vel_ref[1,:],'r')
plt.grid()
plt.subplot(313)
plt.plot(att[0,:],att[1,:])
plt.plot(att_ref[0,:],att_ref[1,:],'r')
plt.plot(thr_ref[0,:],thr_ref[1,:],'g')
plt.grid()
plt.show()

print pos
print pos.shape
print len(pos[0,:])
'''
ilsize=30
slsize=3
ai=LSR(ilsize,slsize)
bsize=32
#training
def learning():
	loss=0
	for i in range(100):
		lx=np.zeros((bsize,ilsize+slsize+1))
		lf=np.zeros((bsize,1))
		for j in range(32):
			index=random.randint(0,len(att_ref[0,:])-100)
			#print index 
			#print [1,vel[0,index],att[0,index],att[1,index]],att_ref[0,index:index+ilsize/3],att_ref[0,index:index+ilsize/3+1],thr_ref[0,index:index+ilsize/3]
			#print np.hstack(([1,vel[0,index],att[0,index],att[1,index]],att_ref[0,index:index+ilsize/3],att_ref[0,index:index+ilsize/3+1],thr_ref[0,index:index+ilsize/3]))
			lx[j]=np.hstack(([1,vel[1,index]-vel[1,index-2],att[1,index],att[2,index]],att_ref[1,index:index+ilsize/3],att_ref[2,index:index+ilsize/3],thr_ref[1,index:index+ilsize/3]))
			lf[j]=vel[1,index+ilsize/3-1]-vel[1,index]
		loss+=ai.train(lx,lf)
	return loss
def train():
	for i in range(10000):
		print "%dth iteration, and the loss is %f"%(i,learning())

def predict():
	lp=len(vel[0])
	px=np.zeros(lp)
	lx=np.zeros((1,ilsize+slsize+1))

	for i in range(len(att_ref[0,:])-100):
		lx[0]=np.hstack(([1,vel[1,i]-vel[1,i-2],att[1,i],att[2,i]],att_ref[1,i:i+ilsize/3],att_ref[2,i:i+ilsize/3],thr_ref[1,i:i+ilsize/3]))
		dx=ai.predict(lx)
		px[i+ilsize/3-1]=vel[1,i]+dx
	plt.figure()
	plt.plot(vel[0,:],vel[1,:])
	plt.grid()
	plt.plot(vel[0,:],px,'g--')
	plt.plot(vel_ref[0,:],vel_ref[1,:],'r')
	plt.show()





if(__name__=="__main__"):
	train()
	#print len(att_ref[1,:])
	#print len(vel[1,:])
	predict()





