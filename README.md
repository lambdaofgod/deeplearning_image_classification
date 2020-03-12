# PlantCLEF 2019 plant classification

The following repository contains code for [PlantCLEF 2019](https://www.imageclef.org/PlantCLEF2019) plant classification challenge.

The dataset contains over 400k plant images classified by species, genus and family.

This project uses [nbdev](https://github.com/fastai/nbdev) to build notebooks as Python project.


### Project setup
```
pip install nbdev
nbdev_build_lib
pip install -e .
```

### Data setup
```
bash scripts/download_data.sh
bash scripts/prepare_data.sh
python data_loading.py 
```
