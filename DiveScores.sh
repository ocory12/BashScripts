#!/bin/bash
declare -i judgecount=0
declare -i judgescore=0
declare -i total=0
declare -i finalscore=0
declare -i lowestscore=10
declare -i highestscore=0
declare -i realjudgecount=0
declare -i scorerange=0


echo "Enter number of judges."
read judgecount

#reads the number of judges that there are

for i in $(seq 1 $judgecount)
do
	
	echo "Enter score."
	read judgescore
	
	#reads the score for each of the judges.
		
	let total=$total+$judgescore

	#makes the total variable the same as the total plus the judgescore

	if [ $judgescore -lt $lowestscore ]
		then
	
			let lowestscore=$judgescore
			
	#sets the lowest score equal the judgescore
	
	fi
	

	if [ $judgescore -gt $highestscore ]
		then
		
			let highestscore=$judgescore
		
		#sets the lowest score equal the judgescore
		
	fi
done


let scorerange=$lowestscore+$highestscore

let total=$total-$scorerange


let finalscore=$total/$realjudgecount

#gets the average

echo "Final Score: $finalscore"
echo "Omitted results: $lowestscore, $highestscore"

