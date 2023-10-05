#!/bin/bash

count=0

while true; do
  echo "The count is $count"
  let count=count+1
  sleep 5

  if [ $count -gt 10 ]; then
    echo "The count is greater than 10"
    break
  fi
done

screencapture shot_emulator_loaded.png

echo "Waiting for the emulator loading finished"

adb shell am start -n com.android.chrome/com.google.android.apps.chrome.Main

count=0

echo "Waiting for chrome to be loaded"

while true; do
  echo "The count is $count"
  let count=count+1
  sleep 5

if [ $count -gt 3 ]; then
    echo "The count is greater than 3"
    break
fi
done

echo "Chrome is loaded";

screencapture shot_macos.png