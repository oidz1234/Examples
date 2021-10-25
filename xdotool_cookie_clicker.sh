#!/bin/bash

# automates cookie clicker kind off
# lots of sleeps otherwise it does things to quickly
# there is probs an inbuilt delay we can use here

sleep 1
# launch brave browser and background the process
brave-browser &!

sleep 1

# focus the window
xdotool search --class  brave-browser windowactivate


# open an ignonito winwo
xdotool key ctrl+N

sleep 1

# focus the url  bar
xdotool key ctrl+l
sleep 1

# type the cookie clicker website
xdotool type "https://orteil.dashnet.org/cookieclicker/"

sleep 1

# send the enter key
xdotool key Return

sleep 1


# move to the location of the cookie
xdotool mousemove 290 477

# click the cookie, sleep every 500 clicks in case we want to exit the script
while true; do
    xdotool click --repeat 500 --delay 10 1; sleep 1
done


