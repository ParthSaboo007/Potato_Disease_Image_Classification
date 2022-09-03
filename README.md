# Potato_Disease_Image_Classification

### PROBLEM STATEMENT 

* Early stage Plant disease identification in crops can prove to be a boon to the agricultural sector. 
* Here, I have developed a classification model for identifying 3-types of diseases in a Potato leaf.

### DATASET  { source: Kaggle }

*  3 categories of potato leaves:-
   * Early blight 
   * Healthy
   * Late blight

### NOTEBOOK IMPLEMENTATION

* Input images:- <1000,152,1000>
* Image size = 256, channels = 3, epochs = 51, batch_size = 32
* Total batches created = 65 (each of size 32)
* Image display in batches using MAtplotlib by converting int32_dtype tensors into uint8_dtype np_arrays
* Train_test_split = <0.75,0.15,0.10) by custom-prepared function to partition_dataset( shuffle size = 1000)
* Train set = First shuffled 1000 random images and took 75% as train sample
* Next, remaining images taken in Test_sample
* Val_set = Randomly picked 15% of the count of total images out of Test_sample
* Test_set = Remaining  images of test_sample constituted Test_set

## Deployed at:->
            https://parthsaboo007-potato-disease-image-classif-streamlit-app-5lv10u.streamlitapp.com/
            
## Working WebApp video capture:->
https://user-images.githubusercontent.com/66863370/185150190-2b74bda1-b597-4909-b59f-7d0841ed5115.mp4
            

