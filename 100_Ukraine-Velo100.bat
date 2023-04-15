rem This block setup specific map settings.
rem Select desired map from: https://download.geofabrik.de and fill the fields below:
set Region=europe
set MapFileName=ukraine-latest.osm.pbf
set MapName=OSM Velo100 Ukraine
set MapDescription=Velo100 Ukraine Updated:
rem If You creating the new map - add 1 to the existing number. (Ex.: Current MapId=000 + 1 = 001, so the new MapId will be: MapId=001)
rem But it can't be longer than 3 integer.
set MapId=001

rem Map style & Typ.
set Typ=velo100.typ
set Style=Velo100Styles
set Config=velo100.cfg

GeneralMapBuilder.cmd