import os
import sys
import subprocess
import string
import fnmatch

SHORTCUTS = {
    "s_echo":["echo","%1"],
    "invert":["convert","%1","-negate","%2"]
}

def tree(indir, func, pattern="*"):
    d = os.listdir(indir)
    for f in d:
        ff = os.path.join(indir,f)
        if os.path.isdir(ff):
            tree(ff, func, pattern)
        elif fnmatch.fnmatch(f,pattern):
            func(ff)

def check_mkdir(path):
    p = os.path.dirname(path)
    if not os.path.exists(p):
        check_mkdir(p)
        os.mkdir(p)

def main():
    args = sys.argv[:]
    if len(args)>1:
        if args[1]=="-h":
            sys.exit("Decends a directory (searchdir) and performs an expression on all files in the directory. Will duplicate directory structure and filenames into optional output directory (outdir).\n\n Usage: python %s searchdir [-o outputdir] [-f \"filter\"] expression [...] %%1 [...] [%%2] \n %%1 is replaced by filenames in (searchdir)\n %%2 is %%1 with (outdir) replacing (searchdir)\n files must match filter pattern\n\n Example: python %s ~/docs -o ~/docs_copy -f \"*.txt\" cp %%1 %%2" % (args[0],args[0]))
    if len(args)<3:
        sys.exit("Usage: python %s searchdir [-o outputdir] [-f \"filter\"] expression [...] %%1 [...] [%%2]\n    %s -h' for help" % (args[0],args[0]))

    indir = os.path.abspath(args[1])
    outdir = None
    pattern = "*"

    for o in ["-o","-f"]:
        if args[2] == "-o":
            args.pop(2)
            outdir = os.path.abspath(args.pop(2))
        elif args[2] == "-f":
            args.pop(2)
            pattern = args.pop(2)

    if args[2] in SHORTCUTS.keys():
        eargs = SHORTCUTS[args[2]]
    else:
        eargs = args[2:]

    def worker(f):
        d={'%1':f}
        if outdir is not None:
            o = string.replace(f,indir,outdir,1)
            check_mkdir(o)
            d['%2']=o
        pargs = [d[a] if a in d.keys() else a for a in eargs]
        subprocess.Popen(pargs,stderr=subprocess.STDOUT)
    
    tree(indir, worker, pattern)



if __name__ == "__main__":
    main()
