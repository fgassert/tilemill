/* LABELS.MSS CONTENTS:
 * - place names
 * - area labels
 * - waterway labels 
 */

/* Font sets are defined in palette.mss */

/* Mapnik does not yet support character-spacing adjustments for 
   labels placed along a line. We can fake this using the replace()
   function in the text-name parameter by replacing each character
   with itself followed by one or more spaces. */

/* ================================================================== */
/* PLACE NAMES
/* ================================================================== */

#place::country[type='country'][zoom>3][zoom<9] {
  text-name:'[name]';
  text-face-name:@sans_bold;
  text-placement:point;
  text-fill:@country_text;
  text-halo-fill: @country_halo;
  text-halo-radius: 1;
  [zoom=3] {
    text-size:10 + @text_adjust;
        text-wrap-width: 40;
  }
  [zoom=4] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
  }
  [zoom>4] {
    text-halo-radius: 2;
  }
  [zoom=5] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
    text-line-spacing: 1;
  }
  [zoom=6] {
    text-size:12 + @text_adjust;
    text-character-spacing: 1;
    text-wrap-width: 80;
    text-line-spacing: 2;
  }
  [zoom=7] {
    text-size:14 + @text_adjust;
    text-character-spacing: 2;
  }
}

#place::state[type='state'][zoom>=5][zoom<=11] {
  text-name:'[name]';
  text-face-name:@sans_bold_italic;
  text-placement:point;
  text-fill:@state_text;
  text-halo-fill: @state_halo;
  text-halo-radius: 1;
  [zoom=6] {
    text-size:10 + @text_adjust;
    text-wrap-width: 40;
  }
  [zoom=7] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
  }
  [zoom>8] {
    text-halo-radius: 2;
  }
  [zoom=8] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
    text-line-spacing: 1;
  }
  [zoom=9] {
    text-size:12 + @text_adjust;
    text-character-spacing: 1;
    text-wrap-width: 80;
    text-line-spacing: 2;
  }
  [zoom=10] {
    text-size:14 + @text_adjust;
    text-character-spacing: 2;
  }
  [zoom=11] {
    text-size:16 + @text_adjust;
    text-character-spacing: 2;
    text-transform: uppercase;
  }
}

/* ---- Cities ------------------------------------------------------ */

#place::city[type='city'][zoom>=9][zoom<=15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@city_text;
  text-halo-fill:@city_halo;
  text-halo-radius:2;
  /*[zoom<=8] {
    text-size: 10 + @text_adjust;
    text-halo-radius:1;
  }*/
  [zoom=9] {
    text-size:11 + @text_adjust;
    text-wrap-width: 60;
  }
  [zoom=10] {
    text-size:12 + @text_adjust;
    text-wrap-width: 70;
  }
  [zoom=11] {
    text-size:13 + @text_adjust;
    text-character-spacing: 1;
    text-wrap-width: 80;
  }
  [zoom=12] {
    text-size:14 + @text_adjust;
    text-character-spacing: 1.5;
    text-wrap-width: 100;
    text-transform: uppercase;
  }
  [zoom=13] {
    text-size:15 + @text_adjust;
    text-character-spacing: 2;
    text-wrap-width: 200;
    text-transform: uppercase;
  }
  [zoom=14] {
    text-size:16 + @text_adjust;
    text-character-spacing: 4;
    text-wrap-width: 300;
    text-transform: uppercase;
  }
  [zoom=15] {
    text-size:17 + @text_adjust;
    text-character-spacing: 6;
    text-wrap-width: 400;
    text-transform: uppercase;
  }
}

/* ---- Towns ------------------------------------------------------- */

#place::town[type='town'][zoom>=11][zoom<=18] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@town_text;
  text-size:9 + @text_adjust;
  text-halo-fill:@town_halo;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom>=10] {
    text-halo-radius:2;
    text-size: 10 + @text_adjust;
  }
  [zoom>=11]{ text-size:11 + @text_adjust; }
  [zoom>=12]{
    text-size:12 + @text_adjust;
    text-line-spacing: 1;
  }
  [zoom>=13]{
    text-transform: uppercase;
    text-character-spacing: 1;
    text-line-spacing: 2;
  }
  [zoom>=14]{
    text-size:13 + @text_adjust;
    text-character-spacing: 2;
    text-line-spacing: 3;
  }
  [zoom>=15]{
    text-size:14 + @text_adjust;
    text-character-spacing: 3;
    text-line-spacing: 4;
  }
  [zoom>=16]{
    text-size:15 + @text_adjust;
    text-character-spacing: 4;
    text-line-spacing: 5;
  }
  [zoom>=17]{
    text-size:16 + @text_adjust;
    text-character-spacing: 5;
    text-line-spacing: 6;
  }
}

/* ---- Other small places ------------------------------------------ */

#place::small[type='village'][zoom>=14],
#place::small[type='suburb'][zoom>=14],
#place::small[type='hamlet'][zoom>=15],
#place::small[type='neighbourhood'][zoom>=15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@other_text;
  text-size:10 + @text_adjust;
  text-halo-fill:@other_halo;
  text-halo-radius:1;
  text-wrap-width: 30;
  [zoom>=14] {
    text-size:11 + @text_adjust;
    text-character-spacing: 1;
    text-wrap-width: 40;
    text-line-spacing: 1;
  }
  [zoom>=15] {
    text-halo-radius: 2;
    text-transform: uppercase;
    text-character-spacing: 1;
    text-wrap-width: 60; 
    text-line-spacing: 1;
  }
  [zoom>=16] {
    text-size:13 + @text_adjust;
    text-character-spacing: 2;
    text-wrap-width: 120;
    text-line-spacing: 2;
  } 
  [zoom>=17] {
    text-size:14 + @text_adjust; 
    text-character-spacing: 3;
    text-wrap-width: 160;
    text-line-spacing: 4;
  }
  [zoom>=18] {
    text-size:15 + @text_adjust;
    text-character-spacing: 4;
    text-line-spacing: 6;
  }
}

#place::small[type='locality'][zoom>=16] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@locality_text;
  text-size:10 + @text_adjust;
  text-halo-fill:@locality_halo;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom>=16] {
    text-size:11 + @text_adjust;
    text-wrap-width: 80;
    text-line-spacing: 1;
  }
  [zoom>=17] {
    text-size:11 + @text_adjust;
    text-wrap-width: 120;
    text-line-spacing: 2;
  }
  [zoom>=18] {
    text-size:12 + @text_adjust;
    text-character-spacing: 1;
    text-line-spacing: 4;
  }
}


// =====================================================================
// AREA LABELS
// =====================================================================

#area_label {
  // Bring in labels gradually as one zooms in, bases on polygon area
  [zoom>=11][area>102400000],
  [zoom>=12][area>25600000],
  [zoom>=14][area>1600000],
  [zoom>=15][area>320000],
  [zoom>=16][area>80000],
  [zoom>=17][area>20000],
  [zoom>=18][area>5000],
  [zoom>=19][area>=0] {
    text-name: "[name]";
    text-halo-radius: 1.5;
    text-face-name:@sans_italic;
    text-size: 11 + @text_adjust;
    text-wrap-width:30;
    text-fill: @locality_text;
    text-halo-fill: @locality_halo;
    text-character-spacing: 1;
    // Specific style overrides for different types of areas:
    [type='park'][zoom>=10] {
      text-face-name: @sans_lt_italic;
      text-fill: lighten(@park,50%);
      text-halo-fill: @park;
    }
    [type='golf_course'][zoom>=10] {
      text-fill: lighten(@sports,50%);
      text-halo-fill: @sports;
    }
    [type='cemetery'][zoom>=10] {
      text-fill: lighten(@cemetery,50%);
      text-halo-fill: @cemetery;
    }
    [type='hospital'][zoom>=10] {
      text-fill: lighten(@hospital,50%);
      text-halo-fill: @hospital;
    }
    [type='college'][zoom>=10],
    [type='school'][zoom>=10],
    [type='university'][zoom>=10] {
      text-fill: lighten(@school,50%);
      text-halo-fill: @school;
    }
    [type='water'][zoom>=10] {
      text-fill: lighten(@water,50%);
      text-halo-fill: @water;
    }
  }
  [zoom=16][area>1600000],
  [zoom=17][area>80000],
  [zoom=18][area>20000],
  [zoom=19][area>5000] {
    text-name: "[name]";
    text-size: 13 + @text_adjust;
    text-wrap-width: 60;
    text-character-spacing: 1;
    text-halo-radius: 2;
  }
  [zoom=17][area>1600000],
  [zoom=18][area>80000],
  [zoom=19][area>20000] {
    text-size: 15 + @text_adjust;
    text-character-spacing: 2;
    text-wrap-width: 120;
  }
  [zoom>=18][area>1600000],
  [zoom>=19][area>80000] {
    text-size: 20+ @text_adjust;
    text-character-spacing: 3;
    text-wrap-width: 180;
  }
}
   
#poi[type='university'][zoom>=16],
#poi[type='hospital'][zoom>=17],
#poi[type='school'][zoom>=18],
#poi[type='library'][zoom>=19] {
  text-name:"[name]";
  text-face-name:@sans;
  text-size:11+ @text_adjust;
  text-wrap-width:30;
  text-fill: @poi_text;
  text-character-spacing: 1;
  [zoom>16] {text-size:12+ @text_adjest;}
}


/* ================================================================== */
/* WATERWAY LABELS
/* ================================================================== */

#waterway_label[type='river'][zoom>=14],
#waterway_label[type='canal'][zoom>=16],
#waterway_label[type='stream'][zoom>=18] {
  text-name: '[name]';
  text-face-name: @sans_italic;
  text-fill: lighten(@water,30%);
  text-halo-fill: fadeout(darken(@water,5%),25%);
  text-halo-radius: 1;
  text-placement: line;
  text-min-distance: 400;
  text-size: 10+ @text_adjust;
  [type='river'][zoom=15],
  [type='canal'][zoom=17],
  [type='stream'][zoom=19] {
    text-name: "[name].replace('([\S\ ])','$1 ')";
  }
  [type='river'][zoom=16],
  [type='canal'][zoom=18] {
    text-size: 11+ @text_adjust;
    text-name: "[name].replace('([\S\ ])','$1 ')";
  }
  [type='river'][zoom>=17],
  [type='canal'][zoom=19] {
    text-size: 14+ @text_adjust;
    text-name: "[name].replace('([\S\ ])','$1 ')";
    text-spacing: 300;
  }
}

/* ================================================================== */
/* ROAD LABELS
/* ================================================================== */

#motorway_label[zoom>=11][zoom<=15][reflen<=8] {
  text-name: "[ref]";
  text-size: 9;
  text-face-name: @sans_bold;
  text-fill: #fff;
  text-min-distance:100;
  [zoom>11] {text-min-distance:180;}
  /*shield-file: url(img/shield-motorway-1.png);
  [type='motorway'] {
    [reflen=1] { shield-file: url(img/shield-motorway-1.png); }
    [reflen=2] { shield-file: url(img/shield-motorway-2.png); }
    [reflen=3] { shield-file: url(img/shield-motorway-3.png); }
    [reflen=4] { shield-file: url(img/shield-motorway-4.png); }
    [reflen=5] { shield-file: url(img/shield-motorway-5.png); }
    [reflen=6] { shield-file: url(img/shield-motorway-6.png); }
    [reflen=7] { shield-file: url(img/shield-motorway-7.png); }
    [reflen=8] { shield-file: url(img/shield-motorway-8.png); }
  }
  [type='trunk'] {
    [reflen=1] { shield-file: url(img/shield-trunk-1.png); }
    [reflen=2] { shield-file: url(img/shield-trunk-2.png); }
    [reflen=3] { shield-file: url(img/shield-trunk-3.png); }
    [reflen=4] { shield-file: url(img/shield-trunk-4.png); }
    [reflen=5] { shield-file: url(img/shield-trunk-5.png); }
    [reflen=6] { shield-file: url(img/shield-trunk-6.png); }
    [reflen=7] { shield-file: url(img/shield-trunk-7.png); }
    [reflen=8] { shield-file: url(img/shield-trunk-8.png); }
  }
  [zoom=12] { shield-min-distance: 60; } //50
  [zoom=13] { shield-min-distance: 80; } //60
  [zoom=14] { shield-min-distance: 120; } //120
  [zoom=15] { shield-min-distance: 180; }
/**/
}

#motorway_label[type='motorway'][zoom>11],
#motorway_label[type='trunk'][zoom>11] {
  text-name:"[name]";
  text-face-name:@sans_bold;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:70;
  text-character-spacing:.5;
  text-size:11+ @text_adjust;
  [zoom=12] { text-min-distance:80; }
  [zoom=13] { text-min-distance:90; }
  [zoom=14] { text-min-distance:110; }
  [zoom>14] {text-size:12 + @text_adjust;}
}

#mainroad_label[type='primary'][zoom>12],
#mainroad_label[type='secondary'][zoom>12],
#mainroad_label[type='tertiary'][zoom>12] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:80;
  text-size:11+ @text_adjust;
  [zoom>15]{
      text-min-distance:90;
      text-size:12+ @text_adjust;
  }
  text-character-spacing:.5;
}

#minorroad_label[zoom>15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:90;
  text-character-spacing:.5;
  text-size:12+ @text_adjust;
}

/* ================================================================== */
/* ONE-WAY ARROWS
/* ================================================================== */

#motorway_label[oneway!=0][zoom>=17],
#mainroad_label[oneway!=0][zoom>=17],
#minorroad_label[oneway!=0][zoom>=17] {
  marker-placement:line;
  marker-max-error: 0.5;
  marker-spacing: 200;
  marker-file: url(img/icon/oneway.svg);
  [oneway=-1] { marker-file: url(img/icon/oneway-reverse.svg); }
  [zoom=16] { marker-transform: "scale(0.5)"; }
  [zoom=17] { marker-transform: "scale(0.75)"; }
}


/* ****************************************************************** */
