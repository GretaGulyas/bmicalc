#!bin/bash

echo "This program calculates your BMI."

echo -n "Your weight in kg:"
read W

echo -n "Your height in meters (example: 1.7):"
read H

bmiH=$(expr $H*$H | bc)
bmi=$(expr $W/$bmiH |bc)

echo "Your body mass index is: $bmi"

echo "*****************************"
echo "Below 18.5 --> underweight"
echo "Between 18.5-24.9 --> normal weight"
echo "Between 25-29.9 --> pre-obesity"
echo "Between 30-34.9 --> obesity class I"
echo "Between 35-39.9 --> obesity class II"
echo "Above 40 --> obesity class III"
echo "*****************************"

echo "Download food guide in PDF?"
echo "1. Yes"
echo "2. No"
read choice

case $choice in
	1)curl -O https://mek.oszk.hu/09900/09959/09959.pdf
	echo "Download successful."
	;;
	2)echo "End of program."
	;;
esac
