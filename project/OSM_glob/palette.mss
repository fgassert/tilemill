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
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              #191919;
@water:             #333333;
@disputed:          #1b1b1b;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin:           #333333;

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
