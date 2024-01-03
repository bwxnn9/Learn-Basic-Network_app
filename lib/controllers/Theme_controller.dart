import 'package:Basic_network_app/configs/themes/app_dark_themes.dart';
import 'package:Basic_network_app/configs/themes/app_light_themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  late ThemeData _darkTheme;
  late ThemeData _lightTheme;

  @override
  void onInit(){
    initializedThemeData();
    super.onInit();
  }

  initializedThemeData(){
    _darkTheme = DarkTheme().buildDarkTheme();
    _lightTheme = LightTheme().buildLightTheme();
  }

  ThemeData get darkTheme => _darkTheme;
  ThemeData get lightTheme => _lightTheme;
}
