## Appium setup made easy

Hassle free Appium setup on OSX using shell script.
Appium is an open source, cross-platform test automation tool for native, hybrid and mobile web apps, tested on simulators (iOS, FirefoxOS), emulators (Android), and real devices (iOS, Android, Windows, FirefoxOS). These shell script (.sh) file will help you set up Appium on OSX.

## REQUIREMENTS

Your environment needs to be setup for the particular mobile platforms that you want to run tests on.

1. You will need node.js and npm v6 or greater. Install Node.JS from the site - https://nodejs.org/en/  take the LTS version based on your Operating system. Please make sure you install NodeJS globally. Recommended version is 6.10.0. OR  If you have nvm installed globally, you run `nvm install` to get the latest version of node specified in the`.nvmrc` file [here](/.nvmrc).  If you don't use nvm, be sure that you are using a compatible version. Further details on nvm can be found on the official [github page](https://github.com/creationix/nvm). MAC OSX users are best suited to install nvm with homebrew `brew install nvm`.

2. JDK 1.8 or above (require for Android). Set 'JAVA_HOME’ to be your JDK path. The bin in that directory should be added to your PATH variable.
3. XCode 8 and up recommended (require only for ios). XCode can be download and installed from the Apple's `App Store`.

## INSTALLATION

open a terminal, navigate to appium-setup-OSX directory

#### iOS setup

  sh ./ios.sh followed-by-your_system_password

##### provide your system password as you need to authorize use of the iOS Simulator etc. more info can be found from [here](http://appium.io/slate/en/master/?javascript#about-appium)

#### Android setup

  sh ./android.sh

##### finally set the android home. Edit your .bash_profile and add following command to .bash_profile and save it.

  export ANDROID_HOME=/Users/<username>/your-andorid-sdk-path

  export PATH=$PATH:$ANDROID_HOME/tools

## Check installation is success or not
on terminal type `appium-doctor` . It will list out Diagnostic report.

## Licensing

MIT
