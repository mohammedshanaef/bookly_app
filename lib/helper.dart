import 'package:flutter/material.dart';

extension MediaQueryHelper on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;
}

// extension NavigationExtension on BuildContext {
//   /// Generalized navigation method with customizable parameters
//   void navigateTo(
//     Widget destination, {
//     Duration delay = const Duration(seconds: 0), // Default no delay
//     Transition transition = Transition.fade, // Default transition
//     Duration? duration, // Custom animation duration
//   }) {
//     Future.delayed(delay, () {
//       Get.to(
//         () => destination,
//         transition: transition,
//         duration: duration,
//       );
//     });
//   }
// }
