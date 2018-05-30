from illustration import *
from unpackrosbag import *


def getintervel(dat,dt):
	it=0
	while(dat[0,it]<dt):
		it=it+1
	return dat[:,it:]

normalbag=unpacker(path="/home/chengque/Desktop/data/normal.bag")
normalbag.unpack()
corrbag=unpacker(path="/home/chengque/Desktop/data/corronce.bag")
corrbag.unpack()
starti=11.5


normlpos=getintervel(normalbag.fetch_pos(),starti)
normalpos_ref=getintervel(normalbag.fetch_pos_ref(),starti)

pos=getintervel(corrbag.fetch_pos(),starti)
pos_ref=getintervel(corrbag.fetch_pos_ref(),starti)

curvs=[]
curvs.append(Curve(normlpos[0,:]-normlpos[0,0],normlpos[1,:],'b'))
curvs.append(Curve(pos[0,:]-pos[0,0],pos[1,:],'g--'))
curvs.append(Curve(normalpos_ref[0,:]-normalpos_ref[0,0],normalpos_ref[1,:],'r'))
curvs.append(Curve(pos_ref[0,:]-pos_ref[0,0],pos_ref[1,:],'r--'))

ils=Illustration(curvs,'Time (s)','X (m)',['normal','correction','reference'])
ils.draw()
ils.show()
