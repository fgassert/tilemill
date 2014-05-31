/* ================================================================== */
/* LAND
/* ================================================================== */

#land[zoom>=0][zoom<6],
#shoreline_300[zoom>=6] {
  polygon-fill: @land;
  polygon-gamma: 0.1;
}
#10mlakes[zoom>2][ScaleRank<2],
#10mlakes[zoom>3][ScaleRank<3],
#10mlakes[zoom>4][ScaleRank<4],
#10mlakes[zoom>5][ScaleRank<5],
#10mlakes[zoom>6][ScaleRank<6],
#10mlakes[zoom>7][ScaleRank<8],
#10mlakes[zoom>8][ScaleRank<9],
#10mlakes[zoom>9][ScaleRank>=9],
{
  polygon-fill: @water;
  
}
/* ================================================================== */
/* ADMINISTRATIVE BOUNDARIES
/* ================================================================== */

#admin0disputed[zoom>3] {
  line-color:@admin;
  line-width:1;
  line-dasharray: 2,2;
  [zoom<=4] { line-opacity: .6; }
  [zoom>=5] { line-opacity: 1; }
  [zoom>=6] { 
    line-width: 1.6;
  }
}

#admin0 [zoom>1]{
  line-color:@admin;
  line-width:1;
  line-opacity: 0.5;
  [zoom=3] { line-opacity: 0.6; }
  [zoom=4] { line-opacity: 0.8; }
  [zoom>4] { line-opacity: 1; }
  [zoom>=6] { line-width: 1.6; }
}

#admin1[SCALERANK<=3][zoom>3],
#admin1[SCALERANK=4][zoom>4],
#admin1[SCALERANK=5][zoom>5],
#admin1[SCALERANK=6][zoom>6],
#admin1[SCALERANK<=8][zoom>7],
#admin1[SCALERANK<=10][zoom>8], {
  line-color:@admin;
  line-width:.7;
  line-dasharray: 4,2.4;
  line-opacity: .6;
  [zoom=4] { line-opacity: .5; }
  [zoom=5] { line-opacity: .8; }
  [zoom>=6] { 
    line-width: 1;
    line-opacity: .9; 
  }
}

#10murbanareas [zoom>4][MAX_POP_al>1000000],
#10murbanareas [zoom>5][MAX_POP_al>300000],
#10murbanareas [zoom>6][MAX_POP_al>100000],
#10murbanareas [zoom>7][MAX_POP_al>30000],
{
  polygon-fill:@urban;
  polygon-gamma:0;
}

#10mroads [zoom>5][Type="Major Highway"]
{
  	line-opacity:.9;
  	line-width:.7;
    line-color:@urban;
	[zoom>6]{ line-width:1.4; }
	[zoom>7]{ line-width:2.1; }
	[zoom>8]{ line-width:2.8; }
}

#10mroads [zoom>7][Type="Secondary Highway"]
{
  	line-opacity:.9;
	line-color:@urban;
	line-width:.7;
	[zoom>8]{ line-width:1.5; }
}