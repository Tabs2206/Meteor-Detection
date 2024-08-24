# Meteor-Detection

 The project leveraged BIRA-IASB’s BRAMS network, a unique collection of
radio receiving stations designed for forward scatter radio observations of me-
teoroids.Calders & Lamy (2012) The goal was to develop analytical model for
interpreting BRAMS data and to create models for simulating the hypersonic
entry of meteoroids and Understanding the speed and size of incoming mete-
ors is essential for assessing their potential impact on Earth and for developing
effective monitoring systems. Accurate classification and analysis can help pre-
dict the energy released upon atmospheric entry and its potential effects on the
Earth’s surface or atmosphere.
The objectives of this research is to:


• Develop analytical model to process and identify meteor data from the
BRAMS radio spectrum data.

• Develop a model that achieves high accuracy, precision, and F1 score, and
is capable of accurately predicting meteors on unseen data.


The Code file contains 3 Models as shown below:

1. YOLOv5 model for meteor detection.
2. YOLOv5 model for aircraft detection.
3. U-Net model for meteor and aircraft classification.

To perform the above three model we need to preprocess the image to get the required amount of image data for detection 

The image shown below shows the image before preprocessing

<img width="505" alt="image" src="https://github.com/user-attachments/assets/294a2215-b43f-4017-ae15-f39e02b6da01">

After cropping and preprocessing the images. The code for the same is give in the below 
# **Folder 1**
## preprocessing_images

**File Name**
Image_Preprocessing(Cropping).ipynb - File have lots of data due to which it is not available on GitHub
Image_Preprocessing(Cropping)lite.ipynb - This file have the cropping python code. Which can be utilized later to get the pre processed data.

After cropping the images we tried to label the data using python but was not able to detect all the straight lines. 

The reason the image pixel is 860X538 because we just cropped and remove the frequency time maps which is not required for our detection.


# **Folder 2**

## labelledData

(i) Contains the labelled data for Meteor in 

labelledData/meteorlabelled/class_meteor

The labelled data then classified in two categories 

(a) Images

Images contain the images we labelled using LabelMe and MakeSene.ai

which is further classified as train and val

labelledData/meteorlabelled/class_meteor/images/train

labelledData/meteorlabelled/class_meteor/images/val

(b) Labels

The labels contain the name of the images.txt and have the coordinates defined for the images in form of rectangle as

<class> <x-axis> <y-axis> <width> <height>

modelyolov5/Meteor_Classification_YOLO.ipynb

which is further classified as train and val

labelledData/meteorlabelled/class_meteor/labels/train

labelledData/meteorlabelled/class_meteor/labels/val


(ii) Contains the labelled data for Aircraft in 

(a) Images

Images contain the images we labelled using LabelMe and MakeSene.ai

which is further classified as train and val 

labelledData/meteorlabelled/class_aircraft/Images/train

labelledData/meteorlabelled/class_aircraft/Images/val

(b) Labels

The labels contain the name of the images.txt and have the coordinates defined for the images in form as polygon

The labels contain JSON file containing polygon data which is converted into .txt file in the below format

<class> <x-axis> <y-axis> <width> <height>

aircraft_model/Aircraft_Classification_Model.ipynb

Change the path of the file as per your directory.

which is further classified as train and val 

labelledData/meteorlabelled/class_aircraft/labels/train

labelledData/meteorlabelled/class_aircraft/labels/val



(iii)  Contains the labelled data for Meteor and Aircraft  

labelledData/multi-classLabels

(a) Images

Images contain the images we labelled using LabelMe and MakeSene.ai

labelledData/multi-classLabels/images

which is further divided in train and unseen data

labelledData/multi-classLabels/images/train

labelledData/multi-classLabels/images/unseen

(b) Labels

The labels contain the name of the images.txt and have the coordinates defined for the images in form as polygon

The labels contain JSON file containing polygon data which is converted into .txt file in the below format

<class> <x-axis> <y-axis> <width> <height>

aircraft_model/Aircraft_Classification_Model.ipynb

which is further divided in train and unseen data

labelledData/multi-classLabels/labels/train

labelledData/multi-classLabels/labels/unseen


# **Folder 3**

The meteor detection model is defined in 

## modelyolov5

The model can be run through google colab as accessible in 

modelyolov5/Meteor_Classification_YOLO.ipynb

The Model output is under the below path with F1, Precision curves, PR-Curve, confusion matrix and also contain the details of training and validation data.

modelyolov5/TrainModel

The model can be customized by adding the below file in data/ directory in the below path 
modelyolov5/coco128_meteor.yaml

The model is saved in 

modelyolov5/best.pt

## The output is given in 

modelyolov5/output.png

modelyolov5/output1.png


**Folder 4**

The meteor detection model is defined in 

## aircraft_model

The model can be run through google colab as accessible in 

aircraft_model/Aircraft_Classification_Model.ipynb

The Model output is under the below path with F1, Precision curves, PR-Curve, confusion matrix and also contain the details of training and validation data.

aircraft_model/TrainModel

The model can be customized by adding the below file in data/ directory in the below path 
aircraft_model/coco128_aircraft.yaml.txt

The model is saved in 

aircraft_model/best.pt

## The output is given in 

aircraft_model/output1.png

**Folder 5**
The U-Net model is defined in 

## u-netmodel

The working U-Net model is defined in 

u-netmodel/ModelWithPolygonData_(1).ipynb


The PR-Curve is defined in

u-netmodel/PR-Curve_unet.png


The confusion matrix is defined in
u-netmodel/confusion_matrix_unet.png

The ROC Curve is given in 
u-netmodel/ROC_curve_unet.png

The prediction layer defined in 

u-netmodel/Predictionon3layer.png




