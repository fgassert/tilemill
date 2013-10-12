#!/bin/bash

CURDIR=/Users/fgassert/Documents/git/tilemill


descend $CURDIR/export/gl/ -o $CURDIR/export/gltiles/ -f *.mbtiles mb-util %1 %2
descend $CURDIR/export/gltiles/ -o $CURDIR/export/glout/ -f *.png convert -negate %1 %2


