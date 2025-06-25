# Change App Package Name for Flutter
Change App Package Name with single command. It makes the process very easy and fast.

## What It does?
- [✅] Update AndroidManifest.xml files for release, debug & profile
- [✅] Update build.gradle file
- [✅] Update MainActivity file. Both java & kotlin supported.
- [✅] Move MainActivity file to new package directory structure
- [✅] Delete old package name directory structure.
- [✅] Update Product Bundle Identifier in iOS.
    - if you have customized CFBundleIdentifier in Info.plist, it will not be updated. You have to update it manually.
- [✅] Specify which platform they want to rename the package for.

## How to Use?

Add Change App Package Name to your `pubspec.yaml` in `dev_dependencies:` section.
```yaml
dev_dependencies: 
  change_package_name: ^1.4.0
```
or run this command
```bash
flutter pub add -d change_package_name
```
Not migrated to null safety yet? use old version like this
```yaml
dev_dependencies: 
  change_package_name: ^1.4.0
```


Update dependencies
```
flutter pub get
```
Run this command to change the package name for both platforms.

```
dart run change_package_name:main com.new.package.name
```
To rename only Android:
```
dart run change_package_name:main com.new.package.name --android
```
To rename only IOS:
```
dart run change_package_name:main com.new.package.name --ios
```

Where `com.new.package.name` is the new package name that you want for your app. replace it with any name you want.

## Meta

Atiq Samtia– [@AtiqSamtia](https://twitter.com/atiqsamtia) – me@atiqsamtia.com

Distributed under the MIT license.

[https://github.com/KANAGARAJ-M/change_package_name](https://github.com/KANAGARAJ-M/change_package_name)

