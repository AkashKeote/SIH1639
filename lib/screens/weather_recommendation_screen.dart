import 'package:flutter/material.dart';
import '../widgets/weather_info_card.dart';

class WeatherRecommendationScreen extends StatelessWidget {
  const WeatherRecommendationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Recommendations'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: WeatherInfoCard(),
      ),
    );
  }
}
