## Appium setup made easy

Appium is an open source, cross-platform test automation tool for native, hybrid and mobile web apps, tested on simulators (iOS, FirefoxOS), emulators (Android), and real devices (iOS, Android, Windows, FirefoxOS). The hassle free shell script (.sh) file will help you set up Appium on OSX.

## REQUIREMENTS

Your environment needs to be setup for the particular mobile platforms that you want to run tests on.

1. You will need node.js and npm v6 or greater (use [n](https://github.com/tj/n) or brew install node to install Node.js. We recommend the latest stable version.
2. JDK 1.8 or above (require for Android). Set 'JAVA_HOME’ to be your JDK path. The bin in that directory should be added to your PATH variable.
3. XCode 8 recommended (require only for ios). XCode can be download and installed from app-stope

## INSTALLATION

Navagate to  appium-setup-OSX directory

#### iOS
sh ./ios.sh followed-by-your_system_password

##### provide your system password as you need to authorize use of the iOS Simulator etc. [more info can be found from here](http://appium.io/slate/en/master/?javascript#about-appium)

#### Android
sh ./android.sh

##### finally set the android home. Edit your .bash_profile and add following command to .bash_profile and save it.

        export ANDROID_HOME=/Users/<username>/your-andorid-sdk-path

        export PATH=$PATH:$ANDROID_HOME/tools

## Check installation is success or not
on terminal type `appium-doctor` . It will list out Diagnostic report.

## Licensing

MIT
