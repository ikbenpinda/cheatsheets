This focuses on using the command line, mostly ADB for device bridging and the ./gradlew for Gradle.

### In case adb is having client/server version mismatch:

       brew cask reinstall android-platform-tools

### Building the app:
       ./gradlew
       
       ./gradlew build --info --stacktrace
       
       ./gradlew assemble
       
       
       
### List connected devices/emulators
       adb devices
       
       adb tcp start // todo connecting over wifi
       
       # Over wi-fi:
       adb tcpip 5555 && adb connect YOUR_DEVICE_ID_OR_IP_ADDRESS


### Installing .apk files from machine to device:
       adb install ~/any/path/really/myapk.apk


### Logcat/[Pidcat](https://github.com/JakeWharton/pidcat) logging
       
       # Logcat:
       adb logadb logcat --pid=`adb shell pidof -s com.company.example.app`

       # Pidcat, filtering for specific tag, e.g. "flutter":
       pidcat com.company.example.app -t flutter
       
     
