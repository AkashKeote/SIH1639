import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  final String icon;
  final String title;
  final String description;

  const TipsCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4,
      child: ListTile(
        leading: Text(
          icon,
          style: const TextStyle(fontSize: 30),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(description),
      ),
    );
  }
}
