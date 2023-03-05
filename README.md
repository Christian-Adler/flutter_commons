<!--
https://software-heroes.com/blog/flutter-eigene-pakete-entwickeln-teil-1
https://software-heroes.com/blog/flutter-eigene-pakete-entwickeln-teil-2
-->

Collection of common utils useful in every project.

## Getting started

### minSdkVersion >= 18

* in android/local.properties add `flutter.minSdkVersion=21`
* in android/app/build.gradle add new def  
  `def flutterMinSdkVersion = localProperties.getProperty('flutter.minSdkVersion')`  
  `if (flutterMinSdkVersion == null) {`  
  `  flutterMinSdkVersion = '18'`   
  `}`

  and replace `minSdkVersion flutter.minSdkVersion`  
  with `minSdkVersion flutterMinSdkVersion.toInteger()`

## Usage

See example project screens in `/example` folder.

```dart
ColorUtils.hue
(
Colors
.
yellow
,
10
);
```
