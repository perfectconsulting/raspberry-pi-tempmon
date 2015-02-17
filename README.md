# raspberry-pi tempmon
======================
A simple bash script to output the cpu temprature and load.

Setup
=====

1. copy the scripts to a local folder on the pi (in this case /home/pi)
2. add the following entry to crontab */10 * * * * /home/pi/tempmon.sh >> /home/pi/tempmon.log*
3. restart the Raspberry Pi

