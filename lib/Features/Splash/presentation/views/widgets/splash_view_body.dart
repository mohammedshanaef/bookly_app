import 'package:bookly_app/Features/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController; // values between 0 to 1 only
  late Animation<Offset> slidingAnimation; // parent of slidinganimation

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();

    /// I Applyed Single Responsiblity principle
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(
            AssetData.logo,
            width: 280,
          ),
          const SizedBox(
            height: 24,
          ),
          SlidingText(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 2));

    slidingAnimation = Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero).animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    context.navigateTo(const HomeView(),
        delay: const Duration(seconds: 2), transition: Transition.zoom, duration: const Duration(seconds: 2));
        //Transition.circularReveal
  }
}
