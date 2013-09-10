import os
from multiprocessing import Pool
import subprocess
import string

P = "/Users/fgassert/Documents/git/tilemill/export/"
def main():    
    o = subprocess.call(['node','/Users/fgassert/Documents/git/projectmill/index.js','--mill','--render','-c','/Users/fgassert/Documents/git/tilemill/dom_water.conf.json','-p','/Users/fgassert/Documents/git/tilemill/'],stderr=subprocess.STDOUT)
    if o!=0:
        print "err"
        return
    for t in ['Ua','Ud','Ui','Ca','Cd','Ci']:
        args = ['mb-util',os.path.join(P,'%s.mbtiles'%t),os.path.join(P,t)]
        worker(args)


    execlst = []
    execlst2 = []
    d=os.listdir(os.path.join(P,'Ua'))
    try:
        os.mkdir(os.path.join(P,'Uai'))
        os.mkdir(os.path.join(P,'Uad'))
        os.mkdir(os.path.join(P,'Udi'))
        os.mkdir(os.path.join(P,'Uadi'))
    except:
        pass
    for z in d:
        if os.path.isdir(os.path.join(P,'Ua',z)):
            try:
                os.mkdir(os.path.join(P,'Uad',z))
                os.mkdir(os.path.join(P,'Uai',z))
                os.mkdir(os.path.join(P,'Udi',z))
                os.mkdir(os.path.join(P,'Uadi',z))
            except:
                pass
            d2=os.listdir(os.path.join(P,'Ua',z))
            for x in d2:
                if os.path.isdir(os.path.join(P,'Ua',z,x)):
                    try:
                        os.mkdir(os.path.join(P,'Uad',z,x))
                        os.mkdir(os.path.join(P,'Uai',z,x))
                        os.mkdir(os.path.join(P,'Udi',z,x))
                        os.mkdir(os.path.join(P,'Uadi',z,x))
                    except:
                        pass
                    d3=os.listdir(os.path.join(P,'Ua',z,x))
                    for y in d3:
                        execlst.append(["composite", os.path.join(P,'Ua',z,x,y), os.path.join(P,'Ud',z,x,y), "-compose", "screen", os.path.join(P,'Uad',z,x,y)])
                        execlst.append(["composite", os.path.join(P,'Ua',z,x,y), os.path.join(P,'Ui',z,x,y), "-compose", "screen", os.path.join(P,'Uai',z,x,y)])
                        execlst.append(["composite", os.path.join(P,'Ud',z,x,y), os.path.join(P,'Ui',z,x,y), "-compose", "screen", os.path.join(P,'Udi',z,x,y)])
                        execlst2.append(["composite", os.path.join(P,'Ua',z,x,y), os.path.join(P,'Udi',z,x,y), "-compose", "screen", os.path.join(P,'Uadi',z,x,y)])

    d=os.listdir(os.path.join(P,'Ca'))
    try:
        os.mkdir(os.path.join(P,'Cai'))
        os.mkdir(os.path.join(P,'Cad'))
        os.mkdir(os.path.join(P,'Cdi'))
        os.mkdir(os.path.join(P,'Cadi'))
    except:
        pass
    for z in d:
        if os.path.isdir(os.path.join(P,'Ca',z)):
            try:
                os.mkdir(os.path.join(P,'Cad',z))
                os.mkdir(os.path.join(P,'Cai',z))
                os.mkdir(os.path.join(P,'Cdi',z))
                os.mkdir(os.path.join(P,'Cadi',z))
            except:
                pass
            d2=os.listdir(os.path.join(P,'Ca',z))
            for x in d2:
                if os.path.isdir(os.path.join(P,'Ca',z,x)):
                    try:
                        os.mkdir(os.path.join(P,'Cad',z,x))
                        os.mkdir(os.path.join(P,'Cai',z,x))
                        os.mkdir(os.path.join(P,'Cdi',z,x))
                        os.mkdir(os.path.join(P,'Cadi',z,x))
                    except:
                        pass
                    d3=os.listdir(os.path.join(P,'Ca',z,x))
                    for y in d3:
                        execlst.append(["composite", os.path.join(P,'Ca',z,x,y), os.path.join(P,'Cd',z,x,y), "-compose", "screen", os.path.join(P,'Cad',z,x,y)])
                        execlst.append(["composite", os.path.join(P,'Ca',z,x,y), os.path.join(P,'Ci',z,x,y), "-compose", "screen", os.path.join(P,'Cai',z,x,y)])
                        execlst.append(["composite", os.path.join(P,'Cd',z,x,y), os.path.join(P,'Ci',z,x,y), "-compose", "screen", os.path.join(P,'Cdi',z,x,y)])
                        execlst2.append(["composite", os.path.join(P,'Ca',z,x,y), os.path.join(P,'Cdi',z,x,y), "-compose", "screen", os.path.join(P,'Cadi',z,x,y)])
    
    p = Pool(8);
    p.map(worker,execlst)
    p.map(worker,execlst2)

def worker(args):
    subprocess.call(['echo', string.join(args,' ')])
    subprocess.call(args)

if __name__ == "__main__":
    main()
