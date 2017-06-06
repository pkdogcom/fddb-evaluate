# fddb-evaluate

### Usage ###
After cloning the project, you can either manually download the images from [FDDB](http://vis-www.cs.umass.edu/fddb/index.html#download) and put the '2002' and '2003' folders under the root of the project, or run 'dl-data.sh' script to download images automatically. 

To evaluate detection performance, put the detection results under the root of the project as 'detection.txt' and run the docker by 

```
sudo docker run -v your-fddb-evaluate-project-path:/root/fddb pkdogcom/fddb
```

The for ROC plots will be updated to compare performance between your detector and some other solutions.

### Detection Result Format ###
'detection.txt' should follow the official detection format of FDDB, such as 
```
2002/08/11/big/img_591 # relative path to the first image
1                      # number of faces
167 88 141 141 1.03239 # bounding box of the face (left top width height confidence_score)
2002/08/26/big/img_265 # the second image
3
53 43 98 98 1.02361
305 88 82 82 1.00245
157 115 48 48 0.984681
2002/07/19/big/img_423
1
190 79 117 118 1.01698
```
