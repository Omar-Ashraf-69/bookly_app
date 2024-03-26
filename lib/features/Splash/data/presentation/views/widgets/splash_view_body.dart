import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/Splash/data/presentation/views/widgets/sliding_text.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AssetsData.logo,
            height: 400,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 5,
          ),
          SlidingText(animation: animation),
        ],
      ),
    );
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      // Get.to(() =>const  HomeView(),
      //     transition: Transition.fadeIn, duration: kTransitionDuration);
      // context.go(AppRouter.homeView);
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
        vsync: this, duration: (const Duration(seconds: 2)));
    animation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
}
