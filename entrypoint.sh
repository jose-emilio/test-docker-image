#!/bin/bash
shuf names.csv > random-names.csv
nombre=$(head -n 1 random-names.csv)
shuf color.csv > random-color.csv
color=$(head -n 1 random-color.csv) 
sed -i "s/<NOMBRE>/$nombre/g" index.txt
sed -i "s/<COLOR>/$color/g" index.txt
mv index.txt index.html
rm *.csv
exec "$@"
