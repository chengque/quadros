import matplotlib.pyplot as plt
import matplotlib
matplotlib.rcParams['axes.unicode_minus']=False

class Curve:
    def __init__(self,x=None,y=None,style='--',lw=1,color=''):
        self.xdata=x
        self.ydata=y
        self.style=style
        self.linewidth=lw
        self.color=color


class Illustration:
    def __init__(self,curvs=[],xlabel="",ylabel="",legnd=[]):
        self.curvs=curvs
        self.xlabel=xlabel
        self.ylabel=ylabel
        self.legend=legnd

    def draw(self):
        plt.figure()
        for c in self.curvs:
            if len(c.color)>0:
                plt.plot(c.xdata,c.ydata,c.style,linewidth=c.linewidth,color=c.color)
            else:
                plt.plot(c.xdata,c.ydata,c.style,linewidth=c.linewidth)
        plt.grid()
        plt.xlabel(self.xlabel)
        plt.ylabel(self.ylabel)
        plt.legend(self.legend)

    def annotate(self,arrpos,textpos,text):
        plt.annotate(text,xy=arrpos,xytext=textpos,arrowprops=dict(facecolor="black",shrink=0.02,width=0.4,headwidth=5))

    def show(self):
        plt.show()