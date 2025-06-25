library change_package_name;

import './android_rename_steps.dart';
import './ios_rename_steps.dart';

class ChangePackageName {
  static Future<void> start(List<String> arguments) async {
    if (arguments.isEmpty) {
      print('New package name is missing. Please provide a package name.');
      return;
    }

    if (arguments.length == 1) {
      print('Renaming package for both Android and iOS.');
      await _renameBoth(arguments[0]);
    } else if (arguments.length == 2) {
      var platform = arguments[1].toLowerCase();
      if (platform == '--android') {
        print('Renaming package for Android only.');
        await AndroidRenameSteps(arguments[0]).process();
      } else if (platform == '--ios') {
        print('Renaming package for iOS only.');
        await IosRenameSteps(arguments[0]).process();
      } else {
        print('Invalid argument. Use "--android" or "--ios".');
      }
    } else {
      print('Too many arguments. This package accepts only the new package name and an optional platform flag.');
    }
  }

  static Future<void> _renameBoth(String newPackageName) async {
    await AndroidRenameSteps(newPackageName).process();
    await IosRenameSteps(newPackageName).process();
  }
}
