#!/bin/bash
rm result.txt
rm output.txt
rm output_global.txt
./darknet detector test cfg/obj.data cfg/tiny_yolo_perso.cfg backup/tiny_yolo_perso_last.weights -dont_show -ext_output -thresh 0.5 < ../train.txt > output_global.txt