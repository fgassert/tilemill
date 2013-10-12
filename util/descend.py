#!/usr/bin/python

import os
import sys
import subprocess
import string
import fnmatch

def tree(indir, func, pattern, max_level, l=0):
    if l>max_level:
        return
    d = os.listdir(indir)
    for f in d:
        ff = os.path.join(indir,f)
        if os.path.isdir(ff):
            tree(ff, func, pattern, max_level, l+1)
        elif fnmatch.fnmatch(f,pattern):
            func(ff)

def check_mkdir(path):
    p = os.path.dirname(path)
    if not os.path.exists(p) and len(p)>0:
        check_mkdir(p)
        try:
            os.mkdir(p)
        except:
            pass

def main():
    args = sys.argv[:]
    if len(args)>1:
        if args[1]=="-h":
            sys.exit("Descend utility\n\nDecends a directory and executes a command on all files in the directory. Will duplicate directory structure and filenames into optional output directory <outdir>.\n\nUsage:\n\n %s <searchdir> [-o <outdir>] [<options>] <command. [...] %%1 [...] [%%2]\n\n %%1 is replaced by filenames in <searchdir>\n %%2 is %%1 with <outdir> replacing <searchdir>\n\nOptions:\n\n -o <outdir>   Optional directory for %%2 parameter. Will attempt to duplicate directory structure of <searchdir>.\n\n -f <filter>   Files must match filter pattern (e.g. *.txt)\n\n -l [1-999]    Maximum levels to descend (default 999)\n\n -t [1-256]    Maximum number of concurrent child processes (default 8)\n\nExample:\n\n %s ~/docs -o ~/docs_copy -f \"*.txt\" cp %%1 %%2\n" % (args[0],args[0]))
    if len(args)<3:
        sys.exit("Usage: %s <searchdir> [-o <outdir>] [<options>] <command> [...] %%1 [...] [%%2]\n    %s -h' for help" % (args[0],args[0]))

    indir = args[1]
    if indir[-1] not in ("/","\\"):
        indir = "%s/" % indir
    outdir = None
    pattern = "*"
    max_level = 999
    max_children = 8
    children = []

    for o in ["-o","-f","-l","-t"]:
        if args[2] == "-o":
            args.pop(2)
            outdir = args.pop(2)
        elif args[2] == "-f":
            args.pop(2)
            pattern = args.pop(2)
        elif args[2] == "-l":
            args.pop(2)
            try:
                max_level = int(args.pop(2))
                assert max_level>0
            except:
                sys.exit("Max level must be an integer (1-999)")
        elif args[2] == "-t":
            args.pop(2)
            try:
                max_children = int(args.pop(2))
                assert max_children>0 and max_children<256
            except:
                sys.exit("Max children must be an integer (1-256)")

    eargs = args[2:]

    def worker(f):
        d={'%1':f}
        if outdir is not None:
            o = string.replace(f,indir,"",1)
            o = os.path.join(outdir,o)
            check_mkdir(o)
            d['%2'] = o
        pargs = []
        for a in eargs:
            for k in d.keys():
                a = string.replace(a,k,d[k])
            pargs.append(a)

        if len(pargs)==1:
            p = subprocess.Popen(pargs[0],stderr=subprocess.STDOUT,shell=True)
        else:
            p = subprocess.Popen(pargs,stderr=subprocess.STDOUT)

        children.append(p)
        if len(children) >= max_children:
            for t in children:
                if t.poll() is not None:
                    children.remove(t)
            if len(children) >= max_children:
                children[0].wait()
    
    tree(indir, worker, pattern, max_level)
    for t in children:
        t.wait()


if __name__ == "__main__":
    main()
