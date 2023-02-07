# {{project_name.snakeCase()}}

{{project_name.titleCase()}} project.

## Getting Started

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Recreate Flutter environment

The purpose of this section is to guide you in recreating the Flutter 
environment to be able to launch the Flutter project locally.

### IDEs installation

We need to install `Android Studio` in order to create virtual Android 
devices and launch the project in an Android emulator.

If you want you can also install `Visual Studio Code` which is a lighter 
IDE and consume less CPU and video resources than `Android Studio`.


#### Android Studio

Go to: https://developer.android.com/studio and download the 
`Android Studio` version according to your Operating System (**MacOS**, 
**Windows**, **Linux**).

![install-android-studio-1](resources/install-android-studio-1.png)

![install-android-studio-2](resources/install-android-studio-2.png)


##### MacOS

1. Open the downloaded installation file with extension `.dmg`.

![install-android-studio-mac-1](resources/install-android-studio-mac-1.png)


2. Move the `Android Studio` application to your `Applications` directory.

![install-android-studio-mac-2](resources/install-android-studio-mac-2.png)


3. Open `Android Studio`


4. During the settings verification (`Verify Settings`) be sure to 
include `Android Emulator`, `Android SDK Build-Tools X`, 
and `Android SDK Platform X`; where `X` represents the version.


![install-android-studio-mac-3](resources/install-android-studio-mac-3.png)

On OSX 13.1 upon opening Android Studio Electric Eel there is no
'Verify Settings' part of the Android Studio Setup. 

5. Click on the `Plugins` option from the left menu and select `Flutter` 
under the `Marketplace` tab.


![install-android-studio-mac-4](resources/install-android-studio-mac-4.png)

6. Click on `Install` to install the required plugins.

![install-android-studio-mac-5](resources/install-android-studio-mac-5.png)


7. Restart the IDE to apply changes.

![install-android-studio-mac-6](resources/install-android-studio-mac-6.png)


##### Windows
1. Open the installation file and install `Android Studio`


2. Click on the engine icon and select the `Settings` option

![install-android-studio-win-1](resources/install-android-studio-win-1.png)


3. On the left menu select the `Plugins` option and then install 
the `Dart` and `Flutter` plugins under the `Marketplace` tab.

![install-android-studio-win-2](resources/install-android-studio-win-2.png)


4. Restart the IDE to apply changes.


#### Visual Studio Code

1. Download the installer: https://code.visualstudio.com

![install-vscode-1](resources/install-vscode-1.png)


2. Open the IDE and from the left menu select the `Extensions` option.

![install-vscode-2](resources/install-vscode-2.png)


3. Install the `Flutter` plugin.


### Flutter SDK installation

Every Operating System has its own installer and installation steps.

### MacOS

1. Download the Flutter SDK: https://docs.flutter.dev/get-started/install/macos


2. Do the following operations to unzip the installer:

![install-flutter-sdk-mac-1](resources/install-flutter-sdk-mac-1.png)


3. Update the path permanently to use the Flutter CLI directly from the
terminal:

![install-flutter-sdk-mac-2](resources/install-flutter-sdk-mac-2.png)

In some cases you need to do the following:

* `echo $SHELL`
    output: `/bin/zsh`
    
* `vi ~/.zshrc`
    output: `export PATH="$PATH:$HOME/development/flutter/bin"`
    
* `source ~/.zshrc`
    
* `flutter doctor`


4. If you find the warning `Android Studio (not installed)` after running the 
`flutter doctor` command...

![install-flutter-sdk-mac-3](resources/install-flutter-sdk-mac-3.png)

... move the `Android Studio` application to your `Applications` directory.


5. If at some point you encounter the following error `The operation couldn't be completed. Unable to locate a Java Runtime..` do this:

![install-flutter-sdk-mac-5](resources/install-flutter-sdk-mac-4.png)


6. If you find the `cmdline-tools component is missing` error after running the 
`flutter doctor` command:

* Open Android Studio

* Click on `Android Studio` option on the right side of the Apple icon

* Select `Preferences`

![install-flutter-sdk-mac-6](resources/install-flutter-sdk-mac-5.png)


* Under `Appearance & Behavior/System Settings/Android SDK -> SDK Tools` 
    install the `Android SDK Command-line Tools`

![install-flutter-sdk-mac-7](resources/install-flutter-sdk-mac-6.png)


7. If you run the `flutter doctor` command again and notice that the appear a 
warning saying `Some Android licenses not accepted...`, run the following 
command: `flutter doctor --android-licenses`

If you run the above command and appear the following error: `A JNI error has occurred, please check your installation and try again Exception in thread "main" java.lang.UnsupportedClassVersionError: com/android/prefs/AndroidLocationsProvider has been compiled by a more recent version of the Java Runtime (class file version 55.0), this version of the Java Runtime only recognizes class file versions up to 52.0`,
try to downgrade your Java version from Android Studio:

* Navigate to `Android Studio > Settings > Appearance & Behavior > System Settings > Android SDK`

* Select `SDK Tools` and check `Show Package Details` option.

* Expand the `Android SDK Command-line Tools` option and select a previous
version (i.e., `Android SDK Command-line Tools 8.0`).

* Press `Apply` and the download of the selected version will start.

![install-flutter-sdk-android-license](resources/install-flutter-sdk-android-license.png)

8. If you run the `flutter doctor` command again and notice that the appear a 
warning saying
`[!] Android Studio (version 2022.1) ✗ Unable to find bundled Java version.`,
run the following command: `cd /Applications/Android\ Studio.app/Contents` and
then `ln -s jbr jre`.

This is on latest Android Studio - Electric Eel version, note that the bundled
jre directory in the Android Studio installation folder is now renamed to jbr
according to: https://stackoverflow.com/questions/51281702/unable-to-find-bundled-java-version-on-flutter

### Windows

1. Download the Flutter SDK: https://docs.flutter.dev/get-started/install/windows

![install-flutter-sdk-win-1](resources/install-flutter-sdk-win-1.png)


2. Update path permanently:

* Summary of actions from Flutter official doc

![install-flutter-sdk-win-2](resources/install-flutter-sdk-win-2.png)


* Click on Windows icon, type `env`, and select `Edit the system environment variables` 

![install-flutter-sdk-win-3](resources/install-flutter-sdk-win-3.png)


* Press `Environment variables...` button

![install-flutter-sdk-win-4](resources/install-flutter-sdk-win-4.png)


* On the `System variables` section select `Path` and click `Edit...`

![install-flutter-sdk-win-5](resources/install-flutter-sdk-win-5.png)


* Select `New...` and add the path to the Flutter SDK

![install-flutter-sdk-win-6](resources/install-flutter-sdk-win-6.png)


### Create virtual device (Android)

1. Open `Android Studio`


2. Open the `AVD Manager` by clicking in the icon consisting in a phone and Andoid icon.
Then select the `Create Virtual Device` option.

![create-android-device-1.png](resources/create-android-device-1.png)


3. Select a device from the `Select Hardware` section.

![create-android-device-2.png](resources/create-android-device-2.png)


4. Select an Android SDK from the `System Image` section to install it on the new device.

![create-android-device-3.png](resources/create-android-device-3.png)


5. Give the device a name and select the default orientation.

![create-android-device-4.png](resources/create-android-device-4.png)


6. Press the play button to start the new device.

![create-android-device-5.png](resources/create-android-device-5.png)


### Run project

1. Open `Android Studio`


2. Click on `File/Open` and select the project directory


3. Select a device and press the play button.


![run-flutter-android-studio-1.png](resources/run-flutter-android-studio-1.png)
