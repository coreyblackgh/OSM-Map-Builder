rem This block setup specific map settings.
rem Select desired map from: https://download.geofabrik.de and fill the fields below:
set Region=europe
set MapFileName=ukraine-latest.osm.pbf
set MapName=OSM Velo100 Ukraine
set MapDescription=Velo100 Ukraine Updated:
rem This is an integer that identifies a family of products. Range: [1..65535]. If You creating the new map - add 1 to the existing number. (Ex.: Current MapId=103 + 1 = 104, so the new MapId will be: MapId=104)
set MapId=100

rem Map style & Typ.
set Typ=velo100.typ
set Style=Velo100Styles
set Config=velo100.cfg

GeneralMapBuilder.cmd