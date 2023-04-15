# OSM-Map-Builder
## With this builder You can easily create Your own OSM maps of any country You want.

### Requirements:

1. Install Java 64bit https://www.java.com/en/download/manual.jsp
2. Download or clone the project.
3. Refer to readme: https://github.com/coreyblackgh/OSM-Map-Builder/tree/Master/Configs/bounds
4. Refer to readme: https://github.com/coreyblackgh/OSM-Map-Builder/tree/Master/Configs/sea
5. Run the existing BAT file to create the map (Ex.: '100_Ukraine-MapTourist.bat') once the script was finished its work - in the folder: 'TempOutput' You will be able to find Your created IMG map for GARMIN (Ex.: 'OSM MapTourist Ukraine 2023-04-15.img') and folder with the map for Garmin BaseCamp application (Ex.:'OSM MapTourist Ukraine.gmap' which should be placed to 'C:\Program Files (x86)\Garmin\BaseCamp\Maps') The 'BaseCamp' can be downloaded from: https://www.garmin.com/en-US/software/basecamp/.


### If You want to create the new map:
1. You should create the copy of any existing map BAT file (Ex.: '001_Ukraine-MapTourist - Copy.bat').
2. Go to OpenStreetMap Data Extracts: https://download.geofabrik.de and note the path to Your desired country. (Ex.: Ukraine OSM data has the next path: https://download.geofabrik.de/europe/ukraine-latest.osm.pbf, we are interested in the 'final part' of the path - 'europe/ukraine-latest.osm.pbf').
3. Edit & save the newly created BAT file and fill in the information You received above in the 'final part' of the path:

```
Example:

set Region=europe
set MapFileName=ukraine-latest.osm.pbf
set MapName=OSM MapTourist Ukraine
set MapDescription=MapTourist Ukraine Updated:
set MapId=000
```
4. Rename file to: 'MapId_CountryName-StyleName.bat' (Ex.: '001_Ukraine-MapTourist.bat').

For each map, the 'MapId' should be unique.
You create the new map - add 1 to the existing number. (Ex.: Current MapId=000 + 1 = 001, so the new MapId will be: MapId=001)
But it can't be longer than 3 integers.
This will help to avoid the cross-replacing of internal parts of maps and guarantee that Your map will be visible together with other maps.

### The common style is - MapTourist
However, also added three more styles: 'Stranger' (alternative styles & icons), 'Velo100' (alternative styles & icons), and 'Jbm' (has styles from 'Velo100' but its own icons and transparent layer with all map objects - which will be helpful if You want to highlight the track or route in Your navigator).
