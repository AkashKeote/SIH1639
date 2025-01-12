import 'package:flutter/material.dart';
import 'screens/start_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/fertilizer_recommendation_screen.dart';
import 'screens/profile_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fertilizer App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 183, 234, 185)),
        textTheme: GoogleFonts.nunitoTextTheme(),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const StartScreen(),
        '/signup': (context) => const SignupScreen(),
        '/onboarding': (context) => const OnboardingScreen(),
        '/recommendation': (context) => const FertilizerRecommendationScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
