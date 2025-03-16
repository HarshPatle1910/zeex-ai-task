// import 'package:flutter/material.dart';
// import 'package:task1/src/constants/image_strings.dart';
//
// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Stack(
//           children: [
//             Center(
//               child: Container(
//                 child: Image(
//                   image: AssetImage(tSplashImage),
//                   height: 250,
//                   // width: 200,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tWhiteColor,
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 1),
          duration: Duration(seconds: 1),
          builder: (context, double opacity, child) {
            return Opacity(
              opacity: opacity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image(
                      image: AssetImage(tSplashImage),
                      height: 250,
                      // width: 200,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    tAppName,
                    // style: Theme.of(context).textTheme.headlineMedium,
                    style: TextStyle(
                      color: tAccentColor,
                      fontSize: tDefaultSize,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
