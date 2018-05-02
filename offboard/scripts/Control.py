from numpy import linspace
import matplotlib.pyplot as plt
import numpy as np
from collections import deque
import sys

ULIM=100
class PIDUtility:
	def __init__(self,x):
		self.x=x
		self.x_p=0
		self.e_int=0
		self.ui=deque(np.zeros(9),maxlen=10)
		self.qu=deque(np.zeros(12),maxlen=12)
		self.x_l=0
	def emptyui(self):
		x=[0,0,0,0]
		self.x=x
		self.x_p=0
		self.e_int=0
		self.ui=deque(np.zeros(9),maxlen=10)
		self.qu=deque(np.zeros(12),maxlen=12)
		self.x_l=0
	def iterate(self,parm,x,xr,dt):
		self.x=x
		dx=(xr-x-self.x_p)/dt
		self.e_int+=(xr-x)*dt
		if(self.e_int>10):
			self.e_int=10
		if(self.e_int<-10):
			self.e_int=-10
		u=parm[0]*(xr-x)+parm[1]*self.e_int+parm[2]*dx
		self.x_p=xr-x
		self.ui.append(u)
		return u

	def iteratewithcorrection(self,parm,x,xr,ddx,dt):
		self.x=x
		dx=(xr-(x)-self.x_p)/dt
		self.e_int+=(xr-(x))*dt
		if(self.e_int>10):
			self.e_int=10
		if(self.e_int<-10):
			self.e_int=-10
		u=parm[0]*(xr-(x+ddx))+parm[1]*self.e_int+parm[2]*dx
		self.x_p=xr-(x)
		self.ui.append(u)
		self.qu.popleft()
		self.qu.append(u)
		self.x_l=x
		return u

