# example

Example project for flutter_commons

## Getting Started

### minSdkVersion >= 18

* in android/local.properties add `flutter.minSdkVersion=21`
* in android/app/build.gradle add new def  
  `def flutterMinSdkVersion = localProperties.getProperty('flutter.minSdkVersion')`  
  `if (flutterMinSdkVersion == null) {`  
  `  flutterMinSdkVersion = '18'`   
  `}`

  and replace `minSdkVersion flutter.minSdkVersion`  
  with `minSdkVersion flutterMinSdkVersion.toInteger()`
