#!/bin/bash

read -p "Enter day: " day_today

day="${day_today,,}"

if [ $day = "monday" ]; then
	echo "Class at 10:00 am"
elif [ $day = "tuesday" ]; then
	echo "Class at 8:00 am"
elif [ $day = "wednesday" ]; then
	echo "Class at 8:00 am"
elif [ $day = "thursday" ]; then
	echo "No class today"
elif [ $day = "friday" ]; then
	echo "Class at 4:00 pm"
elif [ $day = "saturday" ]; then
	echo "No class today"
elif [ $day = "sunday" ]; then
	echo "Its a holiday"
else
	echo "Wrong input!"
fi
