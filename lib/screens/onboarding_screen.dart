import 'package:flutter/material.dart';
import '../widgets/tips_card.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  final List<Map<String, String>> tips = const [
    {
      'title': 'Choose the Right Crop',
      'description':
          'Selecting the appropriate crop for your soil type ensures better yield and soil health.',
      'icon': '🌾',
    },
    {
      'title': 'Understand Your Soil',
      'description':
          'Knowing your soil type helps in selecting the right fertilizers and amendments.',
      'icon': '🧑‍🌾',
    },
    {
      'title': 'Optimal Nutrient Management',
      'description':
          'Apply the right amount of nutrients at the right time for optimal crop growth.',
      'icon': '💧',
    },
    {
      'title': 'Regular Monitoring',
      'description':
          'Keep track of your crop health and soil conditions regularly to make informed decisions.',
      'icon': '📈',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Gradient Background
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green, Colors.lightGreenAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Text(
                'Tips & Tricks',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: tips.length,
                  itemBuilder: (context, index) {
                    return TipsCard(
                      icon: tips[index]['icon']!,
                      title: tips[index]['title']!,
                      description: tips[index]['description']!,
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/recommendation');
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: Colors.white,
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(color: Colors.green),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
