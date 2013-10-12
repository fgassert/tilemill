import os
import gdal
import csv

DIR = "/Users/fgassert/Documents/GIS/geotiff/"
OUT = "/Users/fgassert/Documents/GIS/ras_stats2.csv"

def main():
    dirlist = os.listdir(DIR)
    
    statlist = []

    for z in dirlist:
        if z[-4:]==".tif":
            d = gdal.Open(os.path.join(DIR,z))
            s = d.GetRasterBand(1).GetStatistics(0,1)
            s.append(s[2]+2*s[3])
            s.insert(0,z)
            statlist.append(s)

    f = open(OUT,"wb")
    w = csv.writer(f)
    for r in statlist:
        w.writerow(r)
    f.close()



if __name__ == "__main__":
    main()
