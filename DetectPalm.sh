#!/bin/bash

#This script modifies the touchpad PalmDetect parameters to make detecting a palm more acute.
#PalmMinWidth sets the minimum touch diameter that will be considered a palm
#PalmMinZ is the minimum pressure required to register a palm
#--------------------------------------------------------------------------------------------
#If script doesn't perform required results, decrease/increase PalmMinWidth by 2 at a time
#and decrease PalmMinZ by 25 at a time

#Print starting message
echo "Adjusting Palm Detection..."

#If Palm Detect is off, turn it on
if synclient -l | grep "PalmDetect.* =*0" ; then
	synclient PalmDetect=1
	synclient PalmMinWidth=4
	synclient PalmMinZ=150
else
	synclient PalmMinWidth=4
	synclient PalmMinZ=150
fi

#Print message to confirm finish
echo "Palm Detection adjusted!"
