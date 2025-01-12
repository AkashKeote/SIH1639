import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimatedGrowth extends StatelessWidget {
  const AnimatedGrowth({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        'assets/animations/growth.json',
        height: 200,
        repeat: true,
        animate: true,
      ),
    );
  }
}
