from Predictor import *
from unpackrosbag import *
import numpy as np
from numpy import linspace
import math
import random
import matplotlib.pyplot as plt

bag=unpacker("/home/chengque/Desktop/test2.bag")
bag.unpack()


class px4model:
    def __init__(self, datfn=None, datfnpos=None, usize=34, weightfn='inst.h5', bagname="/home/chengque/Desktop/test2.bag"):
        self.bagname=bagname
        self.usize=usize
        self.ai = StateNetwork(usize, weightfn)
        self.datfn=datfn
        self.datfnpos=datfnpos
        self.fetchdata()

    def getintervel(self, dat, dt):
        it = 0
        while dat[0, it] < dt:
            it = it + 1
        return dat[:, it:]

    def fetchdata(self, starti=10):
        bag=unpacker(self.bagname)
        bag.unpack()
        self.pos = self.getintervel(bag.fetch_pos(), starti)
        self.pos_ref = self.getintervel(bag.fetch_pos_ref(), starti)
        self.vel = self.getintervel(bag.fetch_vel(), starti)
        self.vel_ref = self.getintervel(bag.fetch_vel_ref(), starti)
        self.att = self.getintervel(bag.fetch_att(), starti)
        self.att_ref = self.getintervel(bag.fetch_att_ref(), starti)
        self.thr_ref = self.getintervel(bag.fetch_thr_ref(), starti)
        self.bag = bag

    def learning(self):
        loss = 0
        bsize=32
        for i in range(100):
            lx = np.zeros((bsize, self.usize))
            lf = np.zeros((bsize, 1))
            for j in range(32):
                index = random.randint(0, len(self.att_ref[0, :]) - 100)
                lx[j] = self.datfn(self,index)
                lf[j] = self.vel[1, index + 10] - self.vel[1, index]
            loss += self.ai.train(lx, lf)
        self.ai.savemodel()
        return loss

    def learningpos(self):
        loss = 0
        bsize=32
        for i in range(100):
            lx = np.zeros((bsize, self.usize))
            lf = np.zeros((bsize, 1))
            for j in range(32):
                index = random.randint(0, len(self.att_ref[0, :]) - 100)
                lx[j] = self.datfnpos(self,index)
                lf[j] = self.pos[1, index + 10] - self.pos[1, index]
            loss += self.ai.train(lx, lf)
        self.ai.savemodel()
        return loss

    def train(self,num=1000):
        for i in range(num):
            print "%dth iteration, and the loss is %f" % (i, self.learning())

    def trainpos(self,num=1000):
        for i in range(num):
            print "%dth iteration, and the loss is %f" % (i, self.learningpos())


    def predict(self):
        lp = len(self.vel[0])
        px = np.zeros(lp)
        lx = np.zeros((1, self.usize))

        for i in range(len(self.att_ref[0, :]) - 100):
            lx[0] = self.datfn(self,i)
            dx = self.ai.predict(lx)
            px[i + 10] = self.vel[1, i] + dx
        plt.figure()
        plt.plot(self.vel[0, :], self.vel[1, :])
        plt.grid()
        plt.plot(self.vel[0, :], px, 'g--')
        plt.plot(self.vel_ref[0, :], self.vel_ref[1, :], 'r')
        plt.show()

    def predictpos(self):
        lp = len(self.vel[0])
        px = np.zeros(lp)
        lx = np.zeros((1, self.usize))

        for i in range(len(self.att_ref[0, :]) - 100):
            lx[0] = self.datfnpos(self,i)
            dx = self.ai.predict(lx)
            px[i + 10] = self.pos[1, i] + dx
        plt.figure()
        plt.plot(self.pos[0, :], self.pos[1, :])
        plt.grid()
        plt.plot(self.pos[0, :], px, 'g--')
        plt.plot(self.pos_ref[0, :], self.pos_ref[1, :], 'r')
        plt.show()
