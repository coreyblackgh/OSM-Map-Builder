rem This block setup specific map settings.
rem Select desired map from: https://download.geofabrik.de and fill the fields below:
set Region=europe
set MapFileName=romania-latest.osm.pbf
set MapName=OSM MapTourist Romania
set MapDescription=Jbm Ukraine Updated:
rem If You creating the new map - add 1 to the existing number. (Ex.: Current MapId=000 + 1 = 001, so the new MapId will be: MapId=001)
rem But it can't be longer than 3 integer.
set MapId=005

rem Map style & Typ.
set Typ=maptourist.typ
set Style=MaptouristStyles
set Config=maptourist.cfg

GeneralMapBuilder.cmd