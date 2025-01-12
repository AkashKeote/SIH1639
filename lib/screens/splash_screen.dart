import 'package:flutter/material.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });

    return Scaffold(
      body: Center(
        child: Text(
          'Fertilizer App',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
