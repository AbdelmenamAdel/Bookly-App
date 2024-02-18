import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});
// the const is must constructor for the app
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppAssets.appLogo),
        const Text(
          'Read Free Books',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
