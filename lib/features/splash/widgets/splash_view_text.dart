import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_meds/constants.dart';

class SplashColorText extends StatelessWidget {
  const SplashColorText({
    super.key,
    required this.textAnimation,
  });
  final Animation<Offset> textAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: textAnimation,
      builder: (context, _) {
        return AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              'MyMeds',
              textStyle: kColorizeTextStyle,
              colors: kColorizeColors,
              textAlign: TextAlign.center,
            ),
          ],
        );
      },
    );
  }
}

class SplashFadeText extends StatelessWidget {
  const SplashFadeText({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        FadeAnimatedText('Track Your Medicen',
            textStyle: const TextStyle(fontSize: 18),
            duration: const Duration(seconds: 5),
            textAlign: TextAlign.center)
      ],
    );
  }
}
