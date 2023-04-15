rem This block setup specific map settings (MapId should be unique too!)
rem Select desired map from: https://download.geofabrik.de and fill the fields below:
set Region=europe
set MapFileName=portugal-latest.osm.pbf
set MapName=OSM MapTourist Portugal
set MapDescription=MapTourist Portugal Updated:
set MapId=103

rem Map style & Typ.
set Typ=maptourist.typ
set Style=MaptouristStyles

rem Dirs.
set MapsStoreFolder=.\MapsStoreFolder
set TempOutput=.\TempOutput

rem MkgMap & Splitter.
rem https://www.mkgmap.org.uk/doc/index.html
set SplitterFolder=.\splitter-r653
set MkgMapFolder=.\mkgmap-r4907

rem Logic.
@echo Clean temp folders
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

cd %MkgMapFolder%
java -Xmx8G -jar mkgmap.jar --style-file=..\Configs\%Style% --check-styles
java -Xmx8G -jar mkgmap.jar --series-name="%MapName%" --family-name="%MapName%" --family-id=%MapId% -c ..\Configs\config.cfg ..\Configs\%Typ%
cd..

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