import 'package:get/get.dart';

import '../screens/Welcome/welcome_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateToHome();
  }

  void navigateToHome() async {
    await Future.delayed(const Duration(seconds: 10)); // Delay for 3 sec
    Get.off(() => WelcomeScreen()); // Navigate to Home Screen
  }
}
