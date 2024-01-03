import 'package:Basic_network_app/controllers/Theme_controller.dart';
import 'package:Basic_network_app/controllers/auth_controller.dart';
import 'package:get/get.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies(){
    Get.put(ThemeController());
    Get.put(AuthController(), permanent: true);
  }
}
