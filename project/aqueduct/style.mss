Map {
  background-color: transparent;
}

@1:#FFFFA2;
@2:#FFE600;
@3:#FF9900;
@4:#FF1900;
@5:#BB0008;
@6:#ccc;
@7:#808073;

#bws {
  	polygon-gamma:.1;
	[BWS_cat="1. Low (<10%)"] {polygon-fill: @1}
	[BWS_cat="2. Low to medium (10-20%)"] {polygon-fill: @2}
  	[BWS_cat="3. Medium to high (20-40%)"] {polygon-fill: @3}
  	[BWS_cat="4. High (40-80%)"] {polygon-fill: @4}
	[BWS_cat="5. Extremely high (>80%)"] {polygon-fill: @5}
	[BWS_cat="Arid & low water use"] {polygon-fill: @7}
}