This focuses on using the command line, mostly ADB for device bridging and the ./gradlew for Gradle.

### Building the app:
       ./gradlew
       
       ./gradlew build --info --stacktrace
       
       ./gradlew assemble
       
### List connected devices/emulators
       adb devices
       
       adb tcp start // todo connecting over wifi


### Installing .apk files from machine to device:
       adb install ~/any/path/really/myapk.apk
