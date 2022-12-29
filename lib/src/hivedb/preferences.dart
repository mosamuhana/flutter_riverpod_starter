import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';

class Preferences {
  Preferences._();

  static Future<void> initialize() async {
    final Directory tmpDir = await getTemporaryDirectory();
    await Hive.initFlutter(tmpDir.toString());
    await Hive.openBox(_boxName);
  }

  static int get navIndex {
    return Hive.box(_boxName).get(_navIndexKey, defaultValue: 0) as int;
  }

  static set navIndex(int value) {
    Hive.box(_boxName).put(_navIndexKey, value);
  }

  static ThemeMode get themeMode {
    final mode = Hive.box(_boxName)
        .get(_themeModeKey, defaultValue: ThemeMode.system.name) as String;
    switch (mode) {
      case 'ThemeMode.dark':
      case 'dark':
        return ThemeMode.dark;
      case 'ThemeMode.light':
      case 'light':
        return ThemeMode.light;
      case 'ThemeMode.system':
      case 'system':
      default:
        return ThemeMode.system;
    }
  }

  static set themeMode(ThemeMode mode) {
    Hive.box(_boxName).put(_themeModeKey, mode.name);
  }
}

const _boxName = 'prefs';
const _navIndexKey = 'navIndex';
const _themeModeKey = 'themeMode';
