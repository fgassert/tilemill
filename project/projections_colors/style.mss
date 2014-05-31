Map {
  background-color: #333;
}

#countries {
  ::outline {
    line-color: #333;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #e8e8e8;
}

/*
#projectiondata201404 {
  polygon-opacity:1;
  polygon-gamma:.5;
  [ws2024tl="Arid and low water use"] {	polygon-fill:#888; }
  [ws2024tl="Low (<10%)"] {	polygon-fill:#ffffa2; }
  [ws2024tl="Low-medium (10-20%)"] { polygon-fill:#ffe600; }
  [ws2024tl="Medium-high (20-40%)"] { polygon-fill:#ff9900; }
  [ws2024tl="High (40-80%)"] { polygon-fill:#ff1900; }
  [ws2024tl="Extremely high (>80%)"] { polygon-fill:#bb0008; }
  [ws2024tl="No data"] { polygon-fill:#4e4e4e; } 
}
*/

@d4:#ff1900;
@d3:#f9a094;
//@d2:#d88;
@mid:#ddd;
//@i2:#7ce;
@i3:#94d6dd;
@i4:#09c;


@nodata:#ff1800;//#4e4e4e;
//@d1:#fea;
//@i1:#9ce;

#projectiondata201404 {
  polygon-opacity:1;
  polygon-gamma:.2;
  [bt4024cl="2x or greater decrease"] {	polygon-fill:@d4; }
  [bt4024cl="1.7x decrease"] { polygon-fill: @d4; }
  [bt4024cl="1.4x decrease"] { polygon-fill:@d3;  }
  [bt4024cl="1.2x decrease"] { polygon-fill:@d3;  }
  [bt4024cl="Near normal"]   { polygon-fill:@mid; }
  [bt4024cl="1.2x increase"] { polygon-fill:@i3;  }
  [bt4024cl="1.4x increase"] { polygon-fill:@i3;  }
  [bt4024cl="1.7x increase"] { polygon-fill:@i4;  }
  [bt4024cl="2x or greater increase"] { polygon-fill:@i4; }
  [bt4024cl="No data"] { polygon-fill:@nodata; } 
}
