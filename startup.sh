#!/bin/bash
nohup sudo ruby /home/pi/projects/garage_door_opener/server.rb > log.txt 2>&1 &
