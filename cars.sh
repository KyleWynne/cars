#! /bin/bash
# cars.sh
# Kyle Wynne
echo "type the number 1 to enter a new car"
echo "type the number 2 to display the list of cars"
echo "type the number 3 to quit"
read -r NUM
while [ "$NUM" -lt "3" ]
do
	case "$NUM" in
		"1") echo "Type in the year of the car: "
		read -r YEAR
		echo "Type the make of the car: " 
		read -r MAKE
		echo "Type in the model of the car: "
		NEWCAR="$YEAR:$MAKE:$MODEL"
		echo "$NEWCAR" >> My_old_cars;;
		"2") sort My_old_cars;;
		"3") echo "Goodbye :)";;
		"*") echo "Invalid input";;
	esac 
	echo "Type the number 1 to enter a new car"
	echo "Type the number 2 to display a list of cars"
	echo "Type the number 3 to quit"
	read -r NUM
done
		
