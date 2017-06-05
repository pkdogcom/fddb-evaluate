./evaluation/evaluate -a FDDB-folds/ellipseList.txt -d detection.txt -i ~/fddb/ -l FDDB-folds/imgList.txt -z .jpg
gnuplot discROC.p
gnuplot contROC.p
gnuplot discROC_unpub.p
gnuplot contROC_unpub.p

