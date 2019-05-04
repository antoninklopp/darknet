#!/bin/bash
rm output_global.txt
index=0
max=1
for filename in ../DataChallenge/train_individuals/*.jpg; do
    ./darknet detector test cfg/obj.data cfg/tiny_yolo_perso.cfg backup/tiny_yolo_perso_last.weights "$filename" -thresh 0.3 -dont_show
    echo "$index" >> output_global.txt
    if [ -f output.txt ]; then
        cat output.txt >> output_global.txt
        rm output.txt
    fi
    index=$(($index + 1))
    if [ "$index" -eq "$max" ]; then
        if [ $1 = "small" ]; then 
            break
        fi
    fi
done    