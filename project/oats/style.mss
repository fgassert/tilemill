Map {
  background-color: #000;
}

@maxstop: 11.51;
@a: #fff;
@ba: fadeout(@a, 100%);
@cocoa: 0.82;
@coffee: 1.23;
@cotton: 2.62;
@G_Cereals: 4.64;
@G_Fiber: 2.3;
@G_Forage: 27.89;
@G_Fruit: 16.24;
@G_Oilcrops: 4.42;
@G_Pulses: 2.12;
@G_RootsTubers: 25.85;
@G_Treenuts: 3.4;
@maize: 6.19;
@maizefor: 38.83;
@oats: 3.01;
@oilpalm: 17.44;
@orange: 19.2;
@rapeseed: 2;
@rice: 5.31;
@rubber: 1.42;
@soybean: 2.34;
@sugarcane: 87.06;
@wheat: 4.09;


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