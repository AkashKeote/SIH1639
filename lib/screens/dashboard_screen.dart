import 'package:flutter/material.dart';
import '../widgets/tree_growth_animation.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: const Center(
        child: TreeGrowthAnimation(),
      ),
    );
  }
}
