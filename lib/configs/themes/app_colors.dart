import 'package:Basic_network_app/configs/themes/app_dark_themes.dart';
import 'package:Basic_network_app/configs/themes/app_light_themes.dart';
import 'package:Basic_network_app/configs/themes/ui_parameters.dart';
import 'package:flutter/material.dart';

const Color onSurfaceTextColor = Colors.white;

const mainGradientLight = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryLightColorLight, primaryColorLight]);

const mainGradientDark = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryDarkColorDark, primarytColorDark]);
LinearGradient mainGradient(BuildContext context)=>
  UIParameters.isDarkMode(context) ? mainGradientDark : mainGradientLight;