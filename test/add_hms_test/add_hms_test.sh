#!/bin/bash

has_failure=0

function mytest() {
	expression="$1"
	expected="$2"
	message="$3"
	actual=$(eval "$expression")
	if $(test "$actual" != "$expected"); then
		echo "FAILURE: actual: '$expression' expected:'$expected' ($message)"
		has_failure=$((has_failure + 1))
	fi
}

mytest "./src/util/add_hms '13:55+00:05'        " '14:00:00' 'normal usage.'
mytest "./src/util/add_hms '13:55 + 00:05'      " '14:00:00' 'allow white spaces around plus.'
mytest "./src/util/add_hms '13:55 + 00:05 '     " '14:00:00' 'allow white spaces at end.'
mytest "./src/util/add_hms '13:55 + 00: 05'     " '14:00:00' 'allow white spaces in middle.'
mytest "./src/util/add_hms '13:55 + 00: 05 : 00'" '14:00:00' 'allow white spaces in middle.'
mytest "./src/util/add_hms '13:55 + 00:005 :000'" '14:00:00' 'allow prefixed zeros.'
mytest "./src/util/add_hms '23:55:00+00:04:59'  " '23:59:59' 'upper limit before overflow string is added.'
mytest "./src/util/add_hms '23:55:01+00:04:59'  " '00:00:00 (1)' 'lower limit after overflow string is added.'
mytest "./src/util/add_hms '23:55+00:05:00'     " '00:00:00 (1)' 'lower limit after overflow string is added.'
mytest "./src/util/add_hms '23:55+00:05:01'     " '00:00:01 (1)' 'lower limit after overflow string is added, plus 1 second.'
mytest "./src/util/add_hms '24+48+0:0:1'        " '00:00:01 (3)' 'several days of overflow.'

if $(test $has_failure = 0); then
	echo "OK. (add_hms)"
fi
