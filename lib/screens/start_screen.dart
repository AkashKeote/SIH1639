import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Gradient Background
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightGreenAccent, Colors.green],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // App Logo or Illustration
                Image.asset(
                  'assets/images/profile_placeholder.png',
                  height: 150,
                ),
                const SizedBox(height: 40),
                // Sign Up Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('Sign Up'),
                ),
                const SizedBox(height: 20),
                // Skip Button
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/onboarding');
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                        color: Color.fromARGB(255, 252, 206, 206),
                        fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
