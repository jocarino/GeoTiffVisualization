REM gdal_translate -of VRT -ot Byte -scale -a_nodata 0 input\air_density_20211220_155545.tiff output\air_density.vrt
REM gdal_translate -of VRT -ot Byte -scale -a_nodata 0 input\elevation_20211222_152811.tiff output\elevation.vrt
REM gdal_translate -of VRT -ot Byte -scale -a_nodata 0 input\haduk_wind_speed_20211212_100640.tiff output\haduk_wind_speed.vrt
REM gdal_translate -of VRT -ot Byte -scale -a_nodata 0 input\max_temp_20211212_100640.tiff output\max_temp.vrt
REM gdal_translate -of VRT -ot Byte -scale -a_nodata 0 input\mean_temp_20211212_100640.tiff output\mean_temp.vrt
REM gdal_translate -of VRT -ot Byte -scale -a_nodata 0 input\min_temp_20211212_100640.tiff output\min_temp.vrt
REM gdal_translate -of VRT -ot Byte -scale -a_nodata 0 input\onshore_ratio_50k_20211212_100640.tiff output\onshore_ratio.vrt
REM gdal_translate -of VRT -ot Byte -scale -a_nodata 0 input\rix_20211220_155545.tiff output\rix.vrt
REM gdal_translate -of VRT -ot Byte -scale -a_nodata 0 input\roughness_10k_20211212_100640.tiff output\roughness.vrt
REM gdal_translate -of VRT -ot Byte -scale -a_nodata 0 input\gbr_wind_atlas_20211224_161132.tiff output\wind_atlas.vrt
gdal_translate -of VRT -ot Byte -scale input\amun_mask_20211224_143849.tiff output\land_mask.vrt

REM python venv\Scripts\gdal2tiles.py -z 0-10 output\air_density.vrt
REM python venv\Scripts\gdal2tiles.py -z 0-10 output\elevation.vrt
REM python venv\Scripts\gdal2tiles.py -z 0-10 output\haduk_wind_speed.vrt
REM python venv\Scripts\gdal2tiles.py -z 0-10 output\max_temp.vrt
REM python venv\Scripts\gdal2tiles.py -z 0-10 output\mean_temp.vrt
REM python venv\Scripts\gdal2tiles.py -z 0-10 output\min_temp.vrt
REM python venv\Scripts\gdal2tiles.py -z 0-10 output\onshore_ratio.vrt
REM python venv\Scripts\gdal2tiles.py -z 0-10 output\rix.vrt
REM python venv\Scripts\gdal2tiles.py -z 0-10 output\roughness.vrt
REM python venv\Scripts\gdal2tiles.py -z 0-10 output\wind_atlas.vrt
python venv\Scripts\gdal2tiles.py -z 0-10 output\land_mask.vrt
