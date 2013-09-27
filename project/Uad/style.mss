Map {
  background-color: transparent;
}

@maxstop: 50000;
@a: #63c334;
@d: #cb76df;
@i: #f17436;
@ba: fadeout(@a, 100%);
@bd: fadeout(@d, 100%);
@bi: fadeout(@i, 100%);


#Ua {
  raster-opacity:1;
  raster-comp-op:screen;
  raster-scaling:gaussian;
  raster-colorizer-default-mode:linear;
  raster-colorizer-default-color:transparent;
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@maxstop,@a)
}
#Ud {
  raster-opacity:1;
  raster-comp-op:screen;
  raster-scaling:gaussian;
  raster-colorizer-default-mode:linear;
  raster-colorizer-default-color:transparent;
  raster-colorizer-stops:
    stop(0,@bd)
    stop(@maxstop,@d)
}
#Ui {
  raster-opacity:1;
  raster-comp-op:screen;
  raster-scaling:gaussian;
  raster-colorizer-default-mode:linear;
  raster-colorizer-default-color:transparent;
  raster-colorizer-stops:
    stop(0,@bi)
    stop(@maxstop,@i)
}
#Ca {
  raster-opacity:1;
  raster-comp-op:screen;
  raster-scaling:gaussian;
  raster-colorizer-default-mode:linear;
  raster-colorizer-default-color:transparent;
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@maxstop,@a)
}
#Cd {
  raster-opacity:1;
  raster-comp-op:screen;
  raster-scaling:gaussian;
  raster-colorizer-default-mode:linear;
  raster-colorizer-default-color:transparent;
  raster-colorizer-stops:
    stop(0,@bd)
    stop(@maxstop,@d)
}
#Ci {
  raster-opacity:1;
  raster-comp-op:screen;
  raster-scaling:gaussian;
  raster-colorizer-default-mode:linear;
  raster-colorizer-default-color:transparent;
  raster-colorizer-stops:
    stop(0,@bi)
    stop(@maxstop,@i)
}

