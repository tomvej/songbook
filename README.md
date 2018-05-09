# Songbook
Defines LaTeX class for typesetting guitar songbook with chords.

Required packages: `extsizes` (class extarticle), `inputenc`, `geometry`, `ifthen`

## Chords
Package with guitar chord diagrams to add at the end of songs.

Required packages: `gchords`

## Dependencies
Packages used in any of the files:
* `extsizes`
* `inputenc`
* `geometry`
* `ifthen`
* `gchords`
* `babel-czech`
* `multicol`

## Building
Each song is a separate file which can be built using `pdflatex`. You can collate them using other command line tools, such as `pdftk`.
