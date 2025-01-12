import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/soil_dropdown.dart';

class SoilSelectionScreen extends StatelessWidget {
  const SoilSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Soil Type'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SoilDropdown(
            selectedSoil: null,
            onChanged: (value) {
              // Handle soil type selection
            },
          ),
        ),
      ),
    );
  }
}
