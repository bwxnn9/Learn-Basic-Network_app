import 'package:Basic_network_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen_1 extends StatelessWidget {
  const SplashScreen_1({Key? key}) : super(key: key);

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(gradient: mainGradient(context)),
      child: Image.asset("assets/storage/learnnet.png",
          width: 300, height: 300),
    ),
    
    );
  }
}