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

echo "Waiting for the emulator loading finished"

adb shell am start -n com.android.chrome/org.chromium.chrome.browser.ChromeTabbedActivity -d "https://www.google.com"

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

echo "Chrome is loaded"