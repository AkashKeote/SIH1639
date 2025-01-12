import 'package:flutter/material.dart';

class WeatherInfoCard extends StatelessWidget {
  const WeatherInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    // Replace with actual weather information
    return const Card(
      child: ListTile(
        title: Text('Current Weather'),
        subtitle: Text('Sunny, 25°C'),
      ),
    );
  }
}
