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
```
bash scripts/download_data.sh
bash scripts/prepare_data.sh
python data_loading.py 
```

### Training


```
guild run basic_training
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

Models were ran for 20 epochs on whole dataset, then the best performing (according to accuracy and recall) model was selected and ran for 50 epochs.

|   | time     | hyperparameters                                                        | epochs | learning_rate | train_batch_size | val_size | train_acc | train_loss | train_precision | train_recall | val_acc | val_precision | val_recall | 
|---|----------|------------------------------------------------------------------------|--------|---------------|------------------|----------|-----------|------------|-----------------|--------------|---------|---------------|------------| 
| 0 | 28:05:24 | epochs=50 sample_size=all train_batch_size=32 val_size=10000           | 50     | 0.001         | 32               | 10000    | 0.739     | 0.981      | 0.879           | 0.657        | 0.506   | 0.664         | 0.463      | 
| 1 | 11:19:11 | learning_rate=0.005 sample_size=all train_batch_size=32 val_size=10000 | 20     | 0.005         | 32               | 10000    | 0.367     | 2.817      | 0.732           | 0.257        | 0.37    | 0.714         | 0.261      | 
| 2 | 11:16:18 | sample_size=all train_batch_size=32 val_size=10000                     | 20     | 0.001         | 32               | 10000    | 0.554     | 1.842      | 0.854           | 0.417        | 0.473   | 0.779         | 0.373      | 
| 3 | 11:00:29 | learning_rate=0.005 sample_size=all val_size=10000                     | 20     | 0.005         | 48               | 10000    | 0.429     | 2.4        | 0.829           | 0.274        | 0.392   | 0.792         | 0.245      | 
| 4 | 10:57:05 | sample_size=all val_size=10000                                         | 20     | 0.001         | 48               | 10000    | 0.621     | 1.525      | 0.865           | 0.503        | 0.496   | 0.738         | 0.412      | 

