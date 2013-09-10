/* ================================================================== */
/* LAND
/* ================================================================== */

#land[zoom>=0][zoom<6],
#shoreline_300[zoom>=6] {
  polygon-fill: @land;
  polygon-gamma: 0.25;
}
#10mlakes[zoom>3][ScaleRank<2],
#10mlakes[zoom>4][ScaleRank=2],
#10mlakes[zoom>5][ScaleRank=3],
#10mlakes[zoom>6][ScaleRank=4],
#10mlakes[zoom>7][ScaleRank=5],
#10mlakes[zoom>8][ScaleRank=6],
#10mlakes[zoom>9][ScaleRank=7],
#10mlakes[zoom>10][ScaleRank>7],
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
  [zoom<=4] { line-opacity: .4; }
  [zoom=5] { line-opacity: .6; }
  [zoom>=6] { 
    line-width: 1.6; 
    line-opacity: .8;
  }
}

#admin0 {
  line-color:@admin;
  line-width:1;
  line-opacity: 0.25;
  [zoom=3] { line-opacity: 0.3; }
  [zoom=4] { line-opacity: 0.6; }
  [zoom>=4] { line-opacity: 1; }
  [zoom>=6] { line-width: 1.6; }
}

#admin1[SCALERANK<=3][zoom>3],
#admin1[SCALERANK=4][zoom>4],
#admin1[SCALERANK=5][zoom>5],
#admin1[SCALERANK=6][zoom>6],
#admin1[SCALERANK=7][zoom>7],
#admin1[SCALERANK=8][zoom>8],
#admin1[SCALERANK=9][zoom>9],
#admin1[SCALERANK=10][zoom>10] {
  line-color:@admin;
  line-width:.7;
  line-dasharray: 5,3;
  [zoom=3] { line-opacity: .3; }
  [zoom=4] { line-opacity: .4; }
  [zoom=5] { line-opacity: .5; }
  [zoom>=6] { 
    line-width: 1;
    line-opacity: .6; 
  }
}

#10murbanareas [zoom>4][MAX_POP_al>1000000],
#10murbanareas [zoom>5][MAX_POP_al>300000],
#10murbanareas [zoom>6][MAX_POP_al>100000],
#10murbanareas [zoom>7][MAX_POP_al>30000],
{
  polygon-fill:@urban;
}
