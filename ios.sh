#!/bin/bash
echo "Welcome to appium setup made easy for ... ios"
echo "$1" | sudo -S chown -R `whoami` /usr/local
npm install -g appium
npm install -g authorize-ios
echo "$1" | sudo -S authorize-ios
echo "$1" | sudo -S xcode-select -s /Applications/Xcode.app/Contents/Developer
npm install -g ios-deploy
echo "$1" | gem install xcpretty
brew install carthage
brew install libimobiledevice --HEAD
brew upgrade libimobiledevice --HEAD
brew install ideviceinstaller
brew upgrade ideviceinstaller
brew install ios-webkit-debug-proxy
brew upgrade ios-webkit-debug-proxy
echo "$1" | sudo -S chmod +x /var/db/lockdown
cd /usr/local/lib/node_modules/appium/node_modules/appium-xcuitest-driver/WebDriverAgent/
mkdir -p Resources/WebDriverAgent.bundle
./Scripts/bootstrap.sh -d
echo "Opening Xcode ............"
open WebDriverAgent.xcodeproj
