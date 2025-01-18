#!/bin/bash

# This script rearranges pages from a scanall, which naturally
# appear in the order of all front sides then all back sides,
# and arranges them in the natural reading order front-back, front-back, etc.

all_files=$(ls | grep -iE '.png$')
num=$(echo "$all_files" | wc -l)
is_odd=$(($num % 2))

function main() {
	# write check if $num is even; otherwise exit.
	if $(test $is_odd -gt 0); then
		echo "Error: the total number of PNG files in this directory is odd ($num)."
		return 1
	fi
	# example sorting for 6 PNG files:
	# ABCDEF
	# split the files in first and second half:
	# --> ABC and DEF
	# reverse order of second half:
	# --> ABC and FED
	# alternatingly merge the two halfs back together:
	# --> AFBECD.
	TERMINATE=$((num / 2))
	beg=$(echo "$all_files" | awk "NR<=($num/2)")
	end=$(echo "$all_files" | awk "NR> ($num/2)" | sort -r)
	natural=$(paste -d \\n <(echo "$beg") <(echo "$end"))
	# prepare the mv commands:
	# --> mv "A" "A".
	# --> mv "F" "B".
	# --> mv "B" "C".
	# --> mv "E" "D".
	# --> mv "C" "E".
	# --> mv "D" "F".
	prefixed=$(echo "$all_files" | sed 's/^/P_/') # prefix output files names.
	mv=$(echo "$all_files" | sed 's/^.*$/mv/')    # create row of mv commands.
	prefixed=$(echo "$prefixed" | sed 's/^/"/')   # add quotes in front.
	prefixed=$(echo "$prefixed" | sed 's/$/"/')   # add quotes after.
	natural=$(echo "$natural" | sed 's/^/"/')     # add quotes in front.
	natural=$(echo "$natural" | sed 's/$/"/')     # add quotes after.
	commands=$(paste <(echo "$mv") <(echo "$natural") <(echo "$prefixed"))
	# execute the move commands.
	while read command; do
		echo "$command"
	done <<<$(echo "$commands")
	echo "Shall those commands be executed? (Y/ctrl-c)" # allows the user to abort with control-C.
	read input
	if $(test -z "$input"); then
		while read command; do
			echo "$command"
			eval "$command"
		done <<<$(echo "$commands")
	else
		echo "Exit: user interrupt."
		return 1
	fi
}

main
