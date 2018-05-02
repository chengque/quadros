#!/usr/bin/env python
from Predictor import *
from unpackrosbag import *
import numpy as np
from numpy import linspace
import math
import random
import matplotlib.pyplot as plt
import matplotlib
matplotlib.rcParams['axes.unicode_minus']=False

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


print len(att_ref[0,:])
print len(vel[0,:])
print len(pos[0,:])


ilsize=30
slsize=3
ai=LSR(ilsize,slsize)
bsize=32

lp=len(vel[0])
px=np.zeros(lp)
lx=np.zeros((1,ilsize+slsize+1))

for i in range(len(att_ref[0,:])-100):
		lx[0]=np.hstack(([1,vel[1,i]-vel[1,i-2],att[1,i],att[2,i]],att_ref[1,i:i+ilsize/3],att_ref[2,i:i+ilsize/3],thr_ref[1,i:i+ilsize/3]))
		dx=ai.predict(lx)
		px[i+ilsize/3-1]=vel[1,i]+dx

plt.figure()
plt.subplot(311)
plt.plot(pos[0,:],pos[1,:])
plt.plot(pos_ref[0,:],pos_ref[1,:],'r')
plt.grid()
plt.subplot(312)
plt.plot(vel[0,:],vel[1,:])
plt.plot(vel_ref[0,:],vel_ref[1,:],'r')
plt.plot(vel[0,:],px,'g--')
plt.grid()
plt.subplot(313)
plt.plot(att[0,:],att[2,:])
plt.plot(att_ref[0,:],att_ref[2,:],'r')
#plt.plot(thr_ref[0,:],thr_ref[1,:],'g')
plt.grid()
plt.show()
'''
print pos
print pos.shape
print len(pos[0,:])
'''