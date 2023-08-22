import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_meds/core/utils/app_router.dart';
import 'package:my_meds/features/splash/widgets/splash_view_text.dart';

class SpalshViewBody extends StatefulWidget {
  const SpalshViewBody({super.key});

  @override
  State<SpalshViewBody> createState() => _SpalshViewBodyState();
}

class _SpalshViewBodyState extends State<SpalshViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> textAnimation;
  @override
  void initState() {
    super.initState();
    initTextAnimation();
    navigatetoHome();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SplashColorText(textAnimation: textAnimation),
        const SplashFadeText(),
      ],
    );
  }

  void initTextAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    textAnimation = Tween<Offset>(begin: const Offset(0, 4), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void navigatetoHome() {
    Future.delayed(const Duration(seconds: 6), () {
      GoRouter.of(context).push(AppRouter.kMedicineView);
    });
  }
}
