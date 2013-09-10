Map {
  background-color: transparent;
}

@maxstop: 3;
@rastercolor: #f77;
@bg: fadeout(@rastercolor, 100%);

#raster {
  raster-opacity:1;
  raster-scaling:gaussian;
  raster-colorizer-default-mode:linear;
  raster-colorizer-default-color:transparent;
  raster-colorizer-stops:
    stop(0,@bg)
    stop(@maxstop,@rastercolor)
}