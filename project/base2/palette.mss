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
@sans_lt:           "Arial MT Std Light Cond","Arial Narrow Regular","DejaVu Sans Book","unifont Medium";
@sans_bold:         "Arial MT Std Bold Cond","Arial Narrow Bold","DejaVu Sans","unifont Medium";
@sans_wide:         "Arial Regular","DejaVu Sans","unifont Medium";
@sans_bold_italic:  "Open Sans Italic","DejaVu Sans Italic","unifont Medium";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              #191919;
@water: #0c0c0c;
@disputed:          #1b1b1b;
@bg: @water;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin:           #333333;
@urban: 			#1d1d1d;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(@land,50%);

@country_text:      #eee;
@country_halo:      @place_halo;

@state_text:        #d8d8d8;
@state_halo:        @place_halo;

@city_text:         #ddd;
@city_halo:         @place_halo;
