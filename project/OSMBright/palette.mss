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
@sans_lt:           "Open Sans Book","DejaVu Sans Book","unifont Medium";
@sans_lt_italic:    "Open Sans Book Italic","DejaVu Sans Italic","unifont Medium";
@sans:              "Open Sans Book","DejaVu Sans","unifont Medium";
@sans_italic:       "Open Sans Book Italic","DejaVu Sans Italic","unifont Medium";
@sans_bold:         "Open Sans","DejaVu Sans","unifont Medium";
@sans_bold_italic:  "Open Sans Italic","DejaVu Sans Italic","unifont Medium";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              #222;
@water:             #111;
@grass:             #292929;
@beach:             #292929;
@park:              #292929;
@cemetery:          #292929;
@wooded:            #181818;
@agriculture:       #393939;

@building:          #333;
@hospital:          #333);
@school:            #333;
@sports:            #333;

@residential:       @land;
@commercial:        @land;
@industrial:        @land;
@parking:           #222;

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
@motorway_fill:     lighten(@motorway_line,50%);
@motorway_case:     @motorway_line * 0.9;

@trunk_line:        #333;
@trunk_fill:        lighten(@trunk_line,50%);
@trunk_case:        @trunk_line * 0.9;

@primary_line:      #333;
@primary_fill:      lighten(@primary_line,50%);
@primary_case:      @primary_line * 0.9;

@secondary_line:    #333;
@secondary_fill:    lighten(@secondary_line,50%);
@secondary_case:    @secondary_line * 0.9;

@standard_line:     @land * 0.85;
@standard_fill:     #000;
@standard_case:     @land * 0.9;

@pedestrian_line:   @standard_line;
@pedestrian_fill:   #444;
@pedestrian_case:   @land;

@cycle_line:        @standard_line;
@cycle_fill:        #444;
@cycle_case:        @land;

@rail_line:         #333;
@rail_fill:         #444;
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
@place_halo:        fadeout(#fff,34%);

@country_text:      #222;
@country_halo:      @place_halo;

@state_text:        #333;
@state_halo:        @place_halo;

@city_text:         #222;
@city_halo:         @place_halo;

@town_text:         #333;
@town_halo:         @place_halo;

@poi_text:          #444;

@road_text:         #222;
@road_halo:         #fff;

@other_text:        #444;
@other_halo:        @place_halo;

@locality_text:     #999;
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      #555;
@village_halo:      @place_halo;

/* ****************************************************************** */



