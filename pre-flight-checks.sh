#!/bin/bash

echo " *** Checking that site can be built."

wok --serve >/dev/null 2>&1 &
WOK_PID=$!

if [[ $? -eq 0 ]]; then
	echo " *** Site built ok."
else
	echo " *** Site could not be built."
	exit 1
fi

sleep 5
curl "http://localhost:8000" >/dev/null 2>&1

if [[ $? -eq 0 ]]; then
	echo " *** Server is running."
else
	echo " *** Server is not running."
	exit 1
fi

kill $WOK_PID

echo " *** All pre-flight checks passed!"
exit 0
