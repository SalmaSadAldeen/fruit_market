import 'package:flutter/material.dart';
import 'package:fruit_market/feature/on_boarding/presentation/on_boarding_view.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    fadingAnimation = Tween<double>(
      begin: .2,
      end: 1,
    ).animate(animationController);

    Future.delayed(const Duration(milliseconds: 100), () {
      if (mounted) {
        animationController.repeat(reverse: true);
      }
    });
    goNextView();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    precacheImage(AssetImage("assets/images/fruit_image.png"), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 3),
          AnimatedBuilder(
            animation: fadingAnimation,
            builder: (context, _) => Opacity(
              opacity: fadingAnimation.value,
              child: Text(
                'Fruit Market',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 52,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ),
          const Spacer(flex: 3),
          Expanded(
            flex: 5,
            child: Image.asset(
              'assets/images/fruit_image.png',
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Center(child: Text('the image not here'));
              },
            ),
          ),
          // SizedBox(height: 1),
        ],
      ),
    );
  }

  void goNextView() {
    Future.delayed(const Duration(seconds: 4), () {
      Get.off(
        () => const OnBoardingView(),
        transition: Transition.cupertino,
        duration: const Duration(seconds: 3),
        curve: Curves.easeIn,
      );
    });
  }
}
