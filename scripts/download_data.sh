# FOODC
mkdir -p data
for f in train_images.zip test_images.zip train.csv test.csv
do
  wget -nc https://s3.eu-central-1.wasabisys.com/aicrowd-practice-challenges/public/foodc/v0.1/$f -O data/$f
done

# Minileaves
for f in train-images.npy train-labels.npy test-images.npy all_classes.txt
do
    wget -nc https://s3.eu-central-1.wasabisys.com/aicrowd-practice-challenges/public/minileaves/v0.1/$f -O data/$f
done

# Orientme
for f in training.tar.gz test.tar.gz sample_submission.csv
do
    wget -nc https://s3.eu-central-1.wasabisys.com/aicrowd-practice-challenges/public/orientme/v0.1/$f -O data/$f
done
