rem This block setup specific map settings.
rem Select desired map from: https://download.geofabrik.de and fill the fields below:
set Region=europe
set MapFileName=ukraine-latest.osm.pbf
set MapName=OSM MapTourist Ukraine
set MapDescription=MapTourist Ukraine Updated:
rem This is an integer that identifies a family of products. Range: [1..65535]. If You creating the new map - add 1 to the existing number. (Ex.: Current MapId=103 + 1 = 104, so the new MapId will be: MapId=104)
set MapId=100

rem Map style & Typ.
set Typ=maptourist.typ
set Style=MaptouristStyles
set Config=maptourist.cfg

GeneralMapBuilder.cmd