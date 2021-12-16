gdal_translate -of VRT -ot Byte -scale -a_nodata 0 input\air_density_20211212_100640.tiff output\air_density.vrt
gdal_translate -of VRT -ot Byte -scale -a_nodata 0 input\haduk_wind_speed_20211212_100640.tiff output\haduk_wind_speed.vrt
gdal_translate -of VRT -ot Byte -scale -a_nodata 0 -colorinterp red input\max_temp_20211212_100640.tiff output\max_temp.vrt
gdal_translate -of VRT -ot Byte -scale -a_nodata 0 -colorinterp green input\mean_temp_20211212_100640.tiff output\mean_temp.vrt
gdal_translate -of VRT -ot Byte -scale -a_nodata 0 -colorinterp blue input\min_temp_20211212_100640.tiff output\min_temp.vrt
gdal_translate -of VRT -ot Byte -scale -a_nodata 0 input\onshore_ratio_50k_20211212_100640.tiff output\onshore_ratio.vrt
gdal_translate -of VRT -ot Byte -scale -a_nodata 0 input\rix_20211212_100640.tiff output\rix.vrt
gdal_translate -of VRT -ot Byte -scale -a_nodata 0 input\roughness_10k_20211212_100640.tiff output\roughness.vrt
gdal_translate -of VRT -ot Byte -scale -a_nodata 0 input\production_atlas_20211214_120849.tiff output\production_atlas.vrt
gdal_translate -of VRT -ot Byte -scale input\amun_mask_20211216_124553.tiff output\amun_mask.vrt

python venv\Scripts\gdal2tiles.py -z 0-8 output\air_density.vrt
python venv\Scripts\gdal2tiles.py -z 0-8 output\haduk_wind_speed.vrt
python venv\Scripts\gdal2tiles.py -z 0-8 output\max_temp.vrt
python venv\Scripts\gdal2tiles.py -z 0-8 output\mean_temp.vrt
python venv\Scripts\gdal2tiles.py -z 0-8 output\min_temp.vrt
python venv\Scripts\gdal2tiles.py -z 0-8 output\onshore_ratio.vrt
python venv\Scripts\gdal2tiles.py -z 0-8 output\rix.vrt
python venv\Scripts\gdal2tiles.py -z 0-8 output\roughness.vrt
python venv\Scripts\gdal2tiles.py -z 0-8 output\production_atlas.vrt
python venv\Scripts\gdal2tiles.py -z 0-8 output\amun_mask.vrt
