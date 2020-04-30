mkdir -p data
gsutil cp gs://lambdastruck_bucket/datasets/train_metadata.csv data/train_metadata.csv 
gsutil cp gs://lambdastruck_bucket/datasets/test_metadata.csv data/test_metadata.csv 
gsutil cp gs://lambdastruck_bucket/datasets/images_train_test_small.tar.gz data/images_train_test_small.tar.gz
