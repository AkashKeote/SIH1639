// home_page.dart
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final bool isLoggedIn;

  const HomePage({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sustainable Farming'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isLoggedIn
                  ? 'Welcome! Enjoy full access to all features.'
                  : 'Welcome! You have limited access.',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            // Basic feature placeholders
            const Text('Weather Data'),
            const Text('Fertilizer Recommendations'),
            if (isLoggedIn) ...[
              const SizedBox(height: 20),
              const Text('Tips and Tricks'),
              const Text('Trending Products'),
            ]
          ],
        ),
      ),
    );
  }
}
