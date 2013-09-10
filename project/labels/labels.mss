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

Map {
  buffer-size:256;
}

#admin0_label[zoom>2][zoom<9][LabelRank<=2],
#admin0_label[zoom>3][zoom<9][LabelRank>2][LabelRank<=4]
{ 
  [TYPE="Country"],[TYPE="Sovereign country"] {
  text-name:'[ADMIN]';
  text-face-name:@sans_lt;
  text-placement:point;
  text-fill:@country_text;
  text-halo-fill: @country_halo;
  text-halo-radius: 1;
  text-character-spacing:1;
  text-min-distance: 10;
  [zoom=3] {
    text-opacity:.6;
    text-size:12;
    text-wrap-width: 50;
  }
  [zoom=4] {
    text-size:15;
    text-wrap-width: 60;
  }
  [zoom=5] {
    text-size:16;
    text-wrap-width: 70;
    text-halo-radius: 2;
    text-character-spacing: 2;
    text-transform: uppercase;
  }
  [zoom=6] {
    text-size:20;
    text-character-spacing: 4;
    text-wrap-width: 120;
    text-opacity:.6;
    text-min-distance: 30;
    text-halo-radius: 2;
    text-character-spacing: 2;
    text-transform: uppercase;
  }
  [zoom>=7] {
    text-opacity:.4;
    text-line-spacing: 1.5;
    text-halo-radius: 2;
    text-allow-overlap: true;
    text-character-spacing: 2;
    text-transform: uppercase;
  }
  [zoom=7] {
    text-size:24;
    text-character-spacing: 6;
    text-wrap-width: 150;
  }
  [zoom=8] {
    text-size:29;
    text-character-spacing: 8;
    text-wrap-width: 180;
  }
  [zoom>=9] {
    text-size:35;
    text-character-spacing: 8;
    text-wrap-width: 200;
  }
  }
}

#admin0_label2[zoom>4][zoom<10][LabelRank>4][LabelRank<=6],
#admin0_label2[zoom>5][zoom<11][LabelRank>6][LabelRank<=8],
#admin0_label2[zoom>6][zoom<11][LabelRank>8][LabelRank<=10]
{ 
  [TYPE="Country"],[TYPE="Sovereign country"] {
  text-name:'[ADMIN]';
  text-face-name:@sans_lt;
  text-placement:point;
  text-fill:@country_text;
  text-halo-fill: @country_halo;
  text-halo-radius: 1;
  text-character-spacing:1;
  text-min-distance: 10;
  [zoom=4] {
    text-size:15;
    text-wrap-width: 60;
  }
  [zoom=5] {
    text-size:16;
    text-wrap-width: 70;
    text-halo-radius: 2;
    text-character-spacing: 2;
    text-transform: uppercase;
  }
  [zoom=6] {
    text-size:20;
    text-character-spacing: 4;
    text-wrap-width: 120;
    text-opacity:.6;
    text-min-distance: 30;
    text-halo-radius: 2;
    text-character-spacing: 2;
    text-transform: uppercase;
  }
  [zoom>=7] {
    text-opacity:.4;
    text-line-spacing: 1.5;
    text-halo-radius: 2;
    text-allow-overlap: true;
    text-character-spacing: 2;
    text-transform: uppercase;
  }
  [zoom=7] {
    text-size:24;
    text-character-spacing: 6;
    text-wrap-width: 150;
  }
  [zoom=8] {
    text-size:29;
    text-character-spacing: 8;
    text-wrap-width: 180;
  }
  [zoom>=9] {
    text-size:35;
    text-character-spacing: 8;
    text-wrap-width: 200;
  }
  }
}


#admin1_shp[zoom>=5][zoom<=11][labelrank<=2], 
#admin1_shp[zoom>=6][zoom<=12][labelrank<=4], 
#admin1_shp[zoom>=7][zoom<=13][labelrank<=6], 
#admin1_shp[zoom>=8][zoom<=14][labelrank<=8],
#admin1_shp[zoom>=9][zoom<=15][labelrank<=10], 
#admin1_shp[zoom>=10][zoom<=15][labelrank<=12], 
#admin1_shp[zoom>=11][zoom<=15][labelrank<=14], 
#admin1_shp[zoom>=12][zoom<=15][labelrank<=16], 
{
  text-name:'[name]';
  text-face-name:@sans_lt;
  text-placement:point;
  text-fill:@state_text;
  text-halo-fill: @state_halo;
  text-halo-radius: 1;
  text-min-distance: 10;
  text-wrap-width:120;
  text-opacity:.9;
  [zoom=5] {
    text-size:12;
    text-wrap-width: 40;
    text-opacity: .4;
  }
  [zoom=6] {
    text-size:13;
    text-wrap-width: 40;
    text-min-distance: 10;
    text-opacity: .7;
  }
  [zoom=7] {
    text-size:14;
    text-wrap-width: 50;
    text-character-spacing: 1.5;
    text-transform: uppercase;
  }
  [zoom=8] {
    text-halo-radius: 2;
    text-size:15;
    text-wrap-width: 70;
    text-line-spacing: 1;
    text-character-spacing: 2;
    text-opacity:.6;
    text-transform: uppercase;
  }
  [zoom=9] {
    text-halo-radius: 2;
    text-size:16;
    text-character-spacing: 2;
    text-wrap-width: 80;
    text-line-spacing: 2;
    text-opacity:.6;
    text-transform: uppercase;
  }
  [zoom=10] {
    text-halo-radius: 2;
    text-size:17;
    text-character-spacing: 3;
    text-wrap-width: 80;
    text-line-spacing: 2;
    text-opacity:.6;
    text-transform: uppercase;
  }
  [zoom=11] {
    text-halo-radius: 2;
    text-size:18;
    text-character-spacing: 4;
    text-wrap-width: 80;
    text-line-spacing: 2;
    text-opacity:.6;
    text-transform: uppercase;
  }
}

/* ---- Cities ------------------------------------------------------ */

#pop2[zoom=5][SCALERANK<5],
#pop2[zoom=6][SCALERANK<5]
{
  text-name:'[NAME]';
  text-face-name:@sans_wide;
  text-placement:point;
  text-fill:@city_text;
  text-halo-fill:@city_halo;
  text-character-spacing:1;
  text-min-distance: 10;
  text-wrap-width: 60;
  text-size: 10;
  text-opacity: 0.3;
  text-halo-radius:1;
  [zoom=6] {
    text-opacity: 0.4;
    text-size: 11;
    text-halo-radius:1;
  }
}

#pop[zoom>=7][zoom<=15][SCALERANK<6], 
#pop[zoom>=8][zoom<=15][SCALERANK<7],
#pop[zoom>=9][zoom<=15][SCALERANK<8],
#pop[zoom>=10][zoom<=15][SCALERANK<9],
{
  text-name:'[NAME]';
  text-face-name:@sans_wide;
  text-placement:point;
  text-fill:@city_text;
  text-halo-fill:@city_halo;
  text-halo-radius:2;
  text-opacity:0.8;
  text-character-spacing:1.5;
  text-min-distance: 10;
  text-wrap-width: 60;
  [zoom=7] {
    text-opacity: 0.5;
    text-size: 13;
    text-halo-radius:1;
  }
  [zoom=8] {
    text-size: 15;
    text-halo-radius:1;
  }
  [zoom=9] {
    text-size:18;
    text-character-spacing:2;
    text-wrap-width: 70;
  }
  [zoom=10] {
    text-size:17;
    text-character-spacing: 1.5;
    text-wrap-width: 80;
  }
  [zoom=11] {
    text-size:17;
    text-character-spacing: 1;
    text-wrap-width: 90;
  }
  [zoom=12] {
    text-size:18;
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


