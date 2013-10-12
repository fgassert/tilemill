import subprocess, os, time, shutil
import descend

crops = [
    "cropland",
    "gmia",
    "cocoa",
    "coffee",
    "cotton",
    "G_Cereals",
    "G_Fiber",
    "G_Forage",
    "G_Fruit",
    "G_Oilcrops",
    "G_Pulses",
    "G_RootsTubers",
    "G_Treenuts",
    "G_SugarCrops",
    "maize",
    "maizefor",
    "oats",
    "oilpalm",
    "orange",
    "rapeseed",
    "rice",
    "rubber",
    "soybean",
    "sugarcane",
    "wheat"]

DIR = "/Users/fgassert/Documents/git/tilemill/export/"
SLEEPTIME = 0.05

def callParallel(pargs_list, max_children=4, wait=True, verbose=True):
    children = []
    for pargs in pargs_list:
        p = callP(pargs,verbose)
        children.append(p)
        while len(children) >= max_children:
            for t in children:
                if t.poll() is not None:
                    children.remove(t)
            time.sleep(SLEEPTIME)
    if wait:
        while len(children)>0:
            children.pop(0).wait()

def callP(pargs, wait=False, verbose=True):
    if type(pargs) is str:
        if verbose:
            print pargs
        p = subprocess.Popen(pargs,stderr=subprocess.STDOUT,shell=True)
    elif len(pargs)==1:
        if verbose:
            print pargs[0]
        p = subprocess.Popen(pargs[0],stderr=subprocess.STDOUT,shell=True)
    else:
        if verbose:
            print pargs.join(" ")
        p = subprocess.Popen(pargs,stderr=subprocess.STDOUT)
    if wait:
        p.wait()
    return p


def main():
    os.chdir(DIR)
    if os.path.exists("cmask"):
        print "removing cmask/"
        shutil.rmtree("cmask")
    os.mkdir("cmask")
    if not os.path.exists("cout"):
        os.mkdir("cout")
    pl = [("mb-util","%s.mbtiles"%c,"cmask/%s"%c) for c in crops]
    callParallel(pl)
    pl = ["cp -r out/bws cout/%s"%c for c in crops]
    callParallel(pl)
    p = "descend cout -o cmask -f *.png convert %1 %2 -alpha Off -compose CopyOpacity -composite %1"
    callP(p).wait()
    
    os.chdir("cout")
    if os.path.exists("crops.7z"):
        os.remove("crops.7z")
    p = "7z a crops.7z ./*"
    callP(p).wait()

    print "complete"
    


if __name__=="__main__":
    main()
