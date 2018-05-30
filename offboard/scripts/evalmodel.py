import numpy as np
from flymodel import *
import sys

def evalpitchroll():
    datfn=lambda p, index: np.hstack(([1,p.vel[1,index]-p.vel[1,index-2],p.att[1,index],p.att[2,index]],
               p.att_ref[1,index:index+10],p.att_ref[2,index:index+10]))
    ai=px4model(datfn, usize=24, weightfn="weightfilepr.h5")
    ai.train()
    ai.predict()

def evalpitchrollandthr():
    datfn=lambda p, index: np.hstack(([1,p.vel[1,index]-p.vel[1,index-2],p.att[1,index],p.att[2,index]],
               p.att_ref[1,index:index+10],p.att_ref[2,index:index+10],p.thr_ref[1,index:index+10]))
    ai=px4model(datfn,weightfn="weightfileprt.h5",bagname="/home/chengque/Desktop/test2.bag")
    ai.train(1000)
    ai.predict()


def evalwithref():
    datfn=lambda p, index: np.hstack(([1,p.vel[1,index]-p.vel[1,index-2],p.att[1,index],p.att[2,index]],
            p.vel_ref[1, index:index + 10],p.att_ref[1,index:index+10],p.att_ref[2,index:index+10],p.thr_ref[1,index:index+10]))
    ai=px4model(datfn,weightfn="weightref.h5",usize=44,bagname="/home/chengque/Desktop/data/teststepok.bag")
    #ai.train(1000)
    ai.predict()

def evalposwithref(fn="/home/chengque/Desktop/data/corronce.bag",trainnum=1000):
    datfn=lambda p, index: np.hstack(([1,p.pos[1,index]-p.pos[1,index-2],p.vel[1,index],p.att[1,index],p.att[2,index]],
            p.vel_ref[1, index:index + 10],p.att_ref[1,index:index+10],p.att_ref[2,index:index+10],p.thr_ref[1,index:index+10]))
    ai=px4model(datfnpos=datfn,weightfn="weightposref.h5",usize=45,bagname=fn)
    ai.trainpos(trainnum)
    ai.predictpos()


if __name__=="__main__":
    fn="/home/chengque/Desktop/data/corronce.bag"
    train=1000
    if(len(sys.argv)>1):
        fn=sys.argv[1]
        print "load file:"+fn
    if (len(sys.argv) > 2):
        train = int(sys.argv[2])
        print "train number:"+str(train)
    evalposwithref(fn,trainnum=train)
    pass
