#!/bin/bash
echo "Welcome to appium setup made easy for ... android"
npm install -g appium
path=$($HOME)
echo $path
cd $path
mkdir appium_android_setup
cd appium_android_setup
echo "Downloading Android SDK tool ...."
curl -O 'https://dl.google.com/android/repository/sdk-tools-darwin-3859397.zip'
mkdir android
mv sdk-tools-darwin-*.zip android/
cd android
unzip sdk-tools-darwin-*.zip
echo "Accepting Android SDK licenses"
yes Yes | tools/bin/sdkmanager --licenses
echo "Updating the Android sdk manager tool"
yes Yes | tools/bin/sdkmanager --update
echo "Downloading other dependency tools ..."
tools/bin/sdkmanager "platforms;android-25" "build-tools;25.0.2" "extras;google;m2repository" "extras;android;m2repository"
rm sdk-tools-darwin-*.zip
echo "make sure to set below path as ANDROID_HOME"
pwd
