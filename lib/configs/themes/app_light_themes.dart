import 'package:Basic_network_app/configs/themes/sub_theme_data_mixin.dart';
import 'package:flutter/material.dart';

const Color primaryLightColorLight = Color.fromARGB(255, 0, 17, 255);
const Color primaryColorLight = Color.fromARGB(255, 255, 0, 0);
const Color mainTextColor = Color.fromARGB(255, 40, 40, 40);

class LightTheme with SubThemeData {
  buildLightTheme() {
    final ThemeData systemLightTheme = ThemeData.light();
    return systemLightTheme.copyWith(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      iconTheme: getIconTheme(),
      textTheme: getTexttThemes()
          .apply(bodyColor: mainTextColor, displayColor: mainTextColor));
  }
}
