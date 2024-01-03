import 'package:Basic_network_app/screens/home.dart';
import 'package:Basic_network_app/screens/splash/splash_screen_1.dart';
import 'package:Basic_network_app/welcomescreen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => SplashScreen_1()),
        GetPage(name: "/introduction", page: () => WelcomeScreen()),
        GetPage(
          name: "/home",
          page: () => Homepage(),
        ),
      ];
}
