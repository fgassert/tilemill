Map {
  background-color: #000;
}

@maxstop: 11.51;
@a: #fff;
@ba: fadeout(@a, 100%);
@cocoa:103.208152919112;
@coffee:115.530972470441;
@cotton:617.862083968752;
@G_Cereals:6936.35125875936;
@G_Fiber:448.695484490374;
@G_Forage:11063.1525633752;
@G_Fruit:2098.60906360313;
@G_Oilcrops:2270.25682770869;
@G_Pulses:214.97966510094;
@G_RootsTubers:3103.66878929067;
@G_SugarCrops:15363.6494218762;
@G_Treenuts:63.160943105318;
@maize:3482.40199447642;
@maizefor:3729.20962648936;
@oats:188.400080122274;
@oilpalm:3219.02435616613;
@orange:1318.44760540565;
@rapeseed:335.912603812233;
@rice:4765.45468947681;
@rubber:116.99764492626;
@soybean:1381.51957564684;
@sugarcane:19886.8024229297;
@wheat:2847.24747560912;
@cropland:3000;
@gmia:1500;


.raster {
  raster-opacity:1;
  raster-scaling:gaussian;
  raster-colorizer-default-mode:linear;
  raster-colorizer-default-color:transparent;
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@maxstop,@a)
}

#cocoa {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@cocoa,@a)
}
#coffee {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@coffee,@a)
}
#cotton {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@cotton,@a)
}
#G_Cereals {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@G_Cereals,@a)
}
#G_Fiber {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@G_Fiber,@a)
}
#G_Forage {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@G_Forage,@a)
}
#G_Fruit {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@G_Fruit,@a)
}
#G_Oilcrops {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@G_Oilcrops,@a)
}
#G_Pulses {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@G_Pulses,@a)
}
#G_RootsTubers {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@G_RootsTubers,@a)
}
#G_Treenuts {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@G_Treenuts,@a)
}
#maize {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@maize,@a)
}
#maizefor {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@maizefor,@a)
}
#oats {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@oats,@a)
}
#oilpalm {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@oilpalm,@a)
}
#orange {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@orange,@a)
}
#rapeseed {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@rapeseed,@a)
}
#rice {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@rice,@a)
}
#rubber {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@rubber,@a)
}
#soybean {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@soybean,@a)
}
#sugarcane {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@sugarcane,@a)
}
#wheat {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@wheat,@a)
}
#gmia {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@gmia,@a)
}
#cropland {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@cropland,@a)
}
#G_SugarCrops {
  raster-colorizer-stops:
    stop(0,@ba)
    stop(@G_SugarCrops,@a)
}