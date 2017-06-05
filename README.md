# fddb-evaluate

After cloning the project, you can either manually download the images from [FDDB](http://vis-www.cs.umass.edu/fddb/index.html#download) and put the '2002' and '2003' folders under the root of the project, or run 'dl-data.sh' script to download images automatically. 

To evaluate detection performance, put the detection results under the root of the project as 'detection.txt' and run the docker by 

```
sudo docker run -ti -v your-fddb-evaluate-project-path:/root/fddb --name fddb pkdogcom/fddb
```

The for ROC plots will be updated to compare performance between your detector and some other solutions.
