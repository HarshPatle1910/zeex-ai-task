import 'package:get/get.dart';

import '../screens/welcome_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateToHome();
  }

  void navigateToHome() async {
    await Future.delayed(const Duration(seconds: 10)); // Delay for 3 sec
    Get.off(() => HomeScreen()); // Navigate to Home Screen
  }
}
