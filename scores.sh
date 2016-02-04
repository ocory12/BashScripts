#!/bin/bash
declare -i judgecount=0
declare -i judgescore=0
declare -i total=0
declare -i finalscore=0
declare -i lowestscore=10
declare -i highestscore=0
declare -i realjudgecount=0
declare -i scorerange=0

# Gets the number of judges
echo "Enter number of judges."
read judgecount

# Loops through each judge
for i in $(seq 1 $judgecount)
do
	# Gets the judge's score
	echo "Enter score."
	read judgescore
	
	# Adds the score to the total
	let total=$total+$judgescore

	# Checks if the score is lower than the lowest score.
	if [ $judgescore -lt $lowestscore ]
	then
		# Sets this score as the lowest score
		let lowestscore=$judgescore
	fi
	
	# Checks if the score is higher than the highest score.
	if [ $judgescore -gt $highestscore ]
	then
		# Sets this score as the lowest score
		let highestscore=$judgescore
	fi
done

# Calculate the range of the scores
let scorerange=$lowestscore+$highestscore
# Removes the lowest and highest score from the total
let total=$total-$scorerange
# Calculates the real number of judges after two scores are removed.
let realjudgecount=$judgecount-2
# Finds the average of the scores.
let finalscore=$total/$realjudgecount

# Prints the final score, and the omitted scores.
echo "Final Score: $finalscore"
echo "Omitted results: $lowestscore, $highestscore"


