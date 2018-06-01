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
start1=10.75
start2=12.35


normlpos=getintervel(normalbag.fetch_pos(),start1)
normalpos_ref=getintervel(normalbag.fetch_pos_ref(),start1)

pos=getintervel(corrbag.fetch_pos(),start2)
pos_ref=getintervel(corrbag.fetch_pos_ref(),start2)

curvs=[]
curvs.append(Curve(normlpos[0,:]-normlpos[0,0],normlpos[1,:],'b'))
curvs.append(Curve(pos[0,:]-pos[0,0],pos[1,:],'g--'))
curvs.append(Curve(normalpos_ref[0,:]-normalpos_ref[0,0],normalpos_ref[1,:],'r'))
curvs.append(Curve(pos_ref[0,:]-pos_ref[0,0],pos_ref[1,:],'r--'))
curvs.append(Curve([0,35],[0.98,0.98],'--',color='grey'))
curvs.append(Curve([0,35],[1.02,1.02],'--',color='grey'))

ils=Illustration(curvs,'Time (s)','X (m)',['normal','correction','reference'])
ils.draw()
ils.annotate((7,0.98),(7.5,0.8),'2% bounds')
plt.ylim([0,1.2])
ils.show()
