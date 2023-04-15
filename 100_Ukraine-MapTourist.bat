rem This block setup specific map settings.
rem Select desired map from: https://download.geofabrik.de and fill the fields below:
set Region=europe
set MapFileName=ukraine-latest.osm.pbf
set MapName=OSM MapTourist Ukraine
set MapDescription=MapTourist Ukraine Updated:
rem If You creating the new map - add 1 to the existing number. (Ex.: Current MapId=1000 + 1 = 1001, so the new MapId will be: MapId=1001)
rem But it can't be longer than 4 integer.
set MapId=1000

rem Map style & Typ.
set Typ=maptourist.typ
set Style=MaptouristStyles
set Config=maptourist.cfg

GeneralMapBuilder.cmd