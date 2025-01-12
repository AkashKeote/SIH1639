import 'package:flutter/material.dart';

class RecommendationButton extends StatelessWidget {
  final VoidCallback onPressed;

  const RecommendationButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(200, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: Colors.white,
      ),
      child: const Text(
        'Get Recommendation',
        style: TextStyle(color: Colors.green),
      ),
    );
  }
}
