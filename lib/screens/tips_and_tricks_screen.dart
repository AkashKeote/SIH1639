import 'package:flutter/material.dart';

class TipsAndTricksScreen extends StatelessWidget {
  const TipsAndTricksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tips & Tricks'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            ListTile(title: Text('Tip 1: Water plants regularly.')),
            ListTile(title: Text('Tip 2: Use organic fertilizers.')),
            ListTile(title: Text('Tip 3: Test soil pH regularly.')),
          ],
        ),
      ),
    );
  }
}
