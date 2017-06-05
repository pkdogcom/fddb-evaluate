FROM ubuntu:16.04
LABEL maintainer pkdogcom@gmail.com

RUN apt-get update && apt-get install -y \
    libopencv-dev gnuplot git && \
    rm -rf /var/lib/apt/lists/*

RUN cd ~/fddb && git clone https://github.com/pkdogcom/fddb-evaluate.git . && \
    cd evaluation && make -j$(nproc) && cd .. && \
    wget http://vis-www.cs.umass.edu/fddb/FDDB-folds.tgz && \
    tar -xvf FDDB-folds.tgz && rm FDDB-folds.tgz && cd FDDB-folds && \
    mv FDDB-fold-*-ellipseList.txt ~/fddb && cat FDDB-fold* > imgList.txt && \
    mv ../FDDB-fold-*-ellipseList.txt ~/fddb/FDDB-folds && cat FDDB-fold-*-ellipseList.txt > ellipseList.txt
    
