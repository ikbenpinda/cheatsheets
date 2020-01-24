This focuses on using the command line, mostly ADB for device bridging and the ./gradlew for Gradle.

### In case adb is having client/server version mismatch:

       brew cask reinstall android-platform-tools

### Building the app:
       ./gradlew
       
       ./gradlew build --info --stacktrace
       
       ./gradlew assemble
       
### List connected devices/emulators

       adb devices
      
### Connecting to a device over wi-fi:

       adb connect YOUR_DEVICE_ID_OR_IP_ADDRESS:5555
       adb disconnect

### In case more than one devices are connected, or one device is connected over both wi-fi and cable:

       adb -s DEVICE_ID <command>

### in case adb isn't working as expected:

       adb kill-server
       adb start-server
       adb tcpip 5555 # Specifically for wi-fi.

### Installing .apk files from machine to device:

       adb install ./app/build/outputs/debug-app.apk # Tip: easiest to do this by opening a terminal in the folder with the apk itself using the project directory.

### Logcat/[Pidcat](https://github.com/JakeWharton/pidcat) logging
       
       # Logcat:
       adb logadb logcat --pid=`adb shell pidof -s com.company.example.app`

       # Pidcat, filtering for specific tag, e.g. "flutter":
       pidcat com.company.example.app -t flutter
       
       # Pidcat over wi-fi:
       pidcat com.company.example.app -s 192.168.xxx.xx
       
### Writing pidcat/logcat output to a file while displaying it in real-time:
       
       # Logcat:
       adb logadb logcat --pid=`adb shell pidof -s com.company.example.app` | tee output.log
       
       # Pidcat:
       pidcat com.company.example.app | tee putput.log

### Screencasting from android device to desktop:

  _See https://github.com/Genymobile/scrcpy_
  
  Installation on MacOS:  
  
      brew install scrcopy
  
  To start casting:
  
      scropy -s DEVICE_ID --max-size 960 --bit-rate 2M --window-title MyApp --record walkthrough.mp4 --max-fps 30
      
  Rotate device:
  
     CTRL + R
