import 'package:book_store_application/constants.dart';
import 'package:book_store_application/core/utils/assets.dart';
import 'package:book_store_application/features/home/presentation/views/screens/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    SplashAnimations();
    Future.delayed(
      const Duration(seconds:2),
      (){
      Get.to(()=>const HomeView() ,
      transition: Transition.fade,
      duration: kTransitionDuration
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsData.logo),
        SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'Read Free Books',
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }

  // ignore: non_constant_identifier_names
  void SplashAnimations() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: const Offset(0, 0))
            .animate(animationController);
    // slidingAnimation.addListener(() {setState(() {}); });
    animationController.forward();
  }
}
