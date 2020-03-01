cat data/PlantCLEF2019TrainFull.tar.gz.part-* > data/PlantCLEF2019TrainFull.tar.gz
mkdir data/images_train
mkdir data/images_test
tar -xvf data/PlantCLEF2019TrainFull.tar.gz --directory data/images_train/
tar -xvf data/PlantCLEF2019Test.tar.gz --directory data/images_test/
