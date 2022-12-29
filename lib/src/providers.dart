import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'hivedb/preferences.dart';

final bottomNavProvider = StateNotifierProvider //..
    .autoDispose<BottomNavBarState, int>((ref) => BottomNavBarState());

final themeProvider = StateNotifierProvider //...
    .autoDispose<ThemeModeState, ThemeMode>((ref) => ThemeModeState());

class BottomNavBarState extends StateNotifier<int> {
  BottomNavBarState() : super(Preferences.navIndex);

  int get value => state;

  set value(int newValue) {
    if (newValue != state) {
      Preferences.navIndex = state = newValue;
    }
  }
}

class ThemeModeState extends StateNotifier<ThemeMode> {
  ThemeModeState() : super(Preferences.themeMode);

  ThemeMode get value => state;

  set value(ThemeMode newValue) {
    if (newValue != state) {
      Preferences.themeMode = state = newValue;
    }
  }
}
