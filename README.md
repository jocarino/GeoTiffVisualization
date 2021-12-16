# Geo .tiff visualization

## Initial Setup

### GDAL

Download the correct gdal version to this repo from the following website. It should match your python version, where cp37 -> python 3.7 e.g. : GDAL-3.3.3-cp37-cp37m-win_amd64.whl

https://www.lfd.uci.edu/~gohlke/pythonlibs/#gdal

Edit the requirements.txt file, so GDAL to matches your file path and file name.

### Python

Create a virtual environment

```powershell
# Create virtual environment
python -m venv .venv
#Enter the virtual environment
.venv/Scripts/activate
#Install dependencies
pip install -r requirements.txt

```

__Note:__ I also needed to:
* Add c:\gdal\bin\gdal\apps to my path (in environment variables)
* Copy the following dlls from c:\gdal\bin:
  * sqlite3.dll
  * libcurl.dll
* A better solution may be to run gdal\apps\gdal_translate...

## Generate tile layers

Create a .vrt output file from the current tiff

```powershell
gdal_translate -of VRT -ot Byte -scale input\feature.tif output\feature.vrt
```

Generate the tiles from output.vrt

```powershell
python venv\Scripts\gdal2tiles.py output\feature.vrt
```

## Add the layers to the leaflet file

After all the layers were successfully generated, move the generated folder to the layers' folder and add the folder name to leaflet.html

```javascript
const layers = ["output"];
```
