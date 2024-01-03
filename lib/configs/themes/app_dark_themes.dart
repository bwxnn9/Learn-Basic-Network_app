import 'package:Basic_network_app/configs/themes/sub_theme_data_mixin.dart';
import 'package:flutter/material.dart';

const Color primaryDarkColorDark = Color.fromARGB(255, 16, 38, 100);
const Color primarytColorDark = Color.fromARGB(255, 112, 133, 190);
const Color mainTextColordark = Colors.white;

class DarkTheme with SubThemeData {
  ThemeData buildDarkTheme() {
    final ThemeData systemDarkTheme = ThemeData.dark();
    return systemDarkTheme.copyWith(
      visualDensity: VisualDensity.adaptivePlatformDensity,
        iconTheme: getIconTheme(),
        textTheme: getTexttThemes().apply(
            bodyColor: mainTextColordark, displayColor: mainTextColordark));
  }
}
