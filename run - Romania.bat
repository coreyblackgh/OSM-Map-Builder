rem This block setup specific map settings (MapId should be unique too!)
rem Select desired map from: https://download.geofabrik.de and fill the fields below:
set Region=Europe
set MapFileName=romania-latest.osm.pbf
set MapName=OSM MapTourist Romania
set MapId=101

rem info MkgMap
rem https://www.mkgmap.org.uk/doc/index.html
rem The rest parameters are technical!
set MapDescription=Updated:
set MapsStoreFolder=.\MapsStoreFolder
set SplitterFolder=.\splitter-r653

@echo Clean temp folders
set TempOutput=.\TempOutput
rmdir /Q /S %TempOutput%
mkdir %TempOutput%

cd %SplitterFolder%
del /s *.pbf
del /s *.list
del /s *.poly
del /s *.txt
del /s *.args
del /s *.log
cd..

@echo Delete old and download the fresh map...
cd .\MapsStoreFolder
del /s %MapFileName%
@echo Downloading the map from https://download.geofabrik.de/
wget https://download.geofabrik.de/%Region%/%MapFileName%
cd..

copy %MapsStoreFolder%\%MapFileName% %SplitterFolder%
cd %SplitterFolder%
java -Xmx8G -jar splitter.jar --description="%MapDescription% %date:~-4,4%-%date:~-7,2%-%date:~-10,2%" %MapFileName% > splitter.log
cd..

java -Xmx8G -jar mkgmap.jar --style-file=CurrentConfigs --check-styles
java -Xmx8G -jar mkgmap.jar --series-name="%MapName%" --family-name="%MapName%" --family-id=%MapId% -c config.cfg maptourist.typ

cd %SplitterFolder%
del /s *.pbf
del /s *.list
del /s *.poly
del /s *.txt
del /s *.args
del /s *.log
cd..

cd %TempOutput%
ren gmapsupp.img "%MapName% %date:~-4,4%-%date:~-7,2%-%date:~-10,2%".img
pause