#! /bin/bash

# Example: 
# $ ~/adblog.sh com.example.app
   
PROCESS_ID=$(adb shell pidof -s ${1})
   
echo "Start logging for PROCESS_ID=${1}"
   
adb logcat -v color --pid=${PROCESS_ID}
