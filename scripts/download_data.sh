mkdir -p data
for f in train_images.zip test_images.zip train.csv test.csv
do
  wget -nc https://s3.eu-central-1.wasabisys.com/aicrowd-practice-challenges/public/foodc/v0.1/$f
done
