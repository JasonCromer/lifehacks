#!/bin/bash

#Print message to confirm start
echo "Turning on the Touchpad..."
#If the touchpad is off, turn it on
if synclient -l | grep "TouchpadOff.* =*1" ; then
	synclient TouchpadOff=0;
else
	synclient TouchpadOff=0;
fi

#Print message to comfirm finish
echo "Touchpad is on!"

export PATH=$PATH":$HOME/bin"