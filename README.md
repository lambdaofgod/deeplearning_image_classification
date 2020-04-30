# PlantCLEF 2019 plant classification

The following repository contains code for [PlantCLEF 2019](https://www.imageclef.org/PlantCLEF2019) plant classification challenge.

The dataset contains over 400k plant images classified by species, genus and family.


## General

This project uses [nbdev](https://github.com/fastai/nbdev) to build notebooks as Python project.

`nbdev_build_lib` extracts Python sources from notebooks and puts them into `deeplearning_image_classification` directory.

The project uses [guild](https://guild.ai/) for managing experiments.

### Project setup
```
pip install nbdev
nbdev_build_lib
pip install -e .
```


### Data setup

#### Full dataset
```
bash scripts/download_data.sh
bash scripts/prepare_data.sh
python data_loading.py 
```

#### Smaller dataset version (10k training and 1k validation images)

This version requires `gsutil` installed, because files are hosted on Google Cloud Storage.

```
bash scripts/download_small_data.sh
bash scripts/prepare_small_data.sh
python data_loading.py 
```



### Training

Smaller version
```
guild run train_model
```

Full version

```
guild run train_model --sample_size all --val_size 10000
```

Hyperparameters are inferred from deeplearning_image_classification/training.py
Default hyperparameter values:
```
beta_1: 0.9
beta_2: 0.999
epochs: 20
float_dtype: float16
freeze_pretrained: no
last_layer_convolutions: 64
learning_rate: 0.001
test_batch_size: 48
train_batch_size: 48
val_batch_size: 48
```

To see detailed results for your runs execute `guild tensorboard`

### Results

|                                                 |       |           |        |                | 
|-------------------------------------------------|-------|-----------|--------|----------------| 
| hyperparameters                                 | acc   | precision | recall | top_k_accuracy | 
| learning_rate=0.005                             | 0.497 | 0.762     | 0.399  | 0.688          | 
| last_layer_convolutions=128 learning_rate=0.005 | 0.496 | 0.736     | 0.41   | 0.692          | 
| learning_rate=0.001                             | 0.382 | 0.708     | 0.282  | 0.61           | 
| last_layer_convolutions=128 learning_rate=0.001 | 0.353 | 0.676     | 0.245  | 0.582          | 
