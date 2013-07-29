/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various weights and styles */
@sans_lt:           "Open Sans Light","DejaVu Sans Book","unifont Medium";
@sans_lt_italic:    "Open Sans Light Italic","DejaVu Sans Italic","unifont Medium";
@sans:              "Open Sans Light","DejaVu Sans","unifont Medium";
@sans_italic:       "Open Sans Light Italic","DejaVu Sans Italic","unifont Medium";
@sans_bold:         "Open Sans Regular","DejaVu Sans","unifont Medium";
@sans_bold_italic:  "Open Sans Italic","DejaVu Sans Italic","unifont Medium";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 1;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              #111;
@water:             #080808;
@grass:             #111;
@beach:             #141414;
@park:              #141414;
@cemetery:          #141414;
@wooded:            #0a0a0a;
@agriculture:       #181818;

@building:          #1a1a1a;
@hospital:          #1a1a1a;
@school:            #1a1a1a;
@sports:            #1a1a1a;

@residential:       #181818;
@commercial:        #181818;
@industrial:        #181818;
@parking:           #0e0e0e;

/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@motorway_line:     #333;
@motorway_fill:     darken(@motorway_line,50%);
@motorway_case:     lighten(@motorway_line,10%);

@trunk_line:        #333;
@trunk_fill:        darken(@trunk_line,50%);
@trunk_case:        lighten(@motorway_line,10%);

@primary_line:      #333;
@primary_fill:      darken(@primary_line,50%);
@primary_case:      lighten(@motorway_line,10%);

@secondary_line:    #333;
@secondary_fill:    darken(@secondary_line,50%);
@secondary_case:    lighten(@motorway_line,10%);

@standard_line:     @land * 1.5;
@standard_fill:     #333;
@standard_case:     @land * 1.2;

@pedestrian_line:   @standard_line;
@pedestrian_fill:   #333;
@pedestrian_case:   fade(@land,37%);

@cycle_line:        @standard_line;
@cycle_fill:        #444;
@cycle_case:        @land;

@rail_line:         #2a2a2a;
@rail_fill:         #141414;
@rail_case:         @land;

@aeroway:           #222;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           #444;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(@land,50%);

@country_text:      #eee;
@country_halo:      @place_halo;

@state_text:        #ddd;
@state_halo:        @place_halo;

@city_text:         #eee;
@city_halo:         @place_halo;

@town_text:         #d8d8d8;
@town_halo:         @place_halo;

@poi_text:          #ccc;

@road_text:         #eee;
@road_halo:         #333;

@other_text:        #ccc;
@other_halo:        @place_halo;

@locality_text:     #ccc;
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      #ccc;
@village_halo:      @place_halo;

/* ****************************************************************** */



