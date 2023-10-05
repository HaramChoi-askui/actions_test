#!/bin/bash

count=0

while [ $count -lt 10 ]; do
  echo "The count is $count"
  let count=count+1
  sleep 5
done

echo "Waiting for the emulator loading finished"

adb shell am start -n com.android.chrome/org.chromium.chrome.browser.ChromeTabbedActivity -d "https://www.google.com"

count=0

echo "Waiting for chrome to be loaded"

while [ $count -lt 3 ]; do
  echo "The count is $count"
  let count=count+1
  sleep 5
done

echo "Chrome is loaded"