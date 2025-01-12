import 'package:flutter/material.dart';
import '../widgets/crop_dropdown.dart';
import '../widgets/soil_dropdown.dart';
import '../widgets/plot_size_input.dart';
import '../widgets/unit_dropdown.dart';
import '../widgets/nutrient_quantity_input.dart';
import '../widgets/recommendation_button.dart';
import '../widgets/animated_growth.dart';

class FertilizerRecommendationScreen extends StatefulWidget {
  const FertilizerRecommendationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FertilizerRecommendationScreenState createState() =>
      _FertilizerRecommendationScreenState();
}

class _FertilizerRecommendationScreenState
    extends State<FertilizerRecommendationScreen> {
  String? selectedCrop;
  String? selectedSoil;
  double? plotSize;
  String? selectedUnit;
  double? nutrientQuantity;

  String? recommendedFertilizer;

  void recommendFertilizer() {
    if (selectedCrop != null &&
        selectedSoil != null &&
        plotSize != null &&
        selectedUnit != null &&
        nutrientQuantity != null) {
      // Replace with actual recommendation logic
      setState(() {
        recommendedFertilizer =
            'For $selectedCrop on $selectedSoil soil with $plotSize $selectedUnit plot, use NPK 15-15-15 with $nutrientQuantity units of nutrients.';
      });
    } else {
      setState(() {
        recommendedFertilizer = 'Please fill out all fields.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fertilizer Recommendation'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightGreen, Colors.green],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            const SizedBox(height: 10),
            const AnimatedGrowth(),
            _buildInputCard(
              'Select Crop Type:',
              CropDropdown(
                selectedCrop: selectedCrop,
                onChanged: (value) {
                  setState(() {
                    selectedCrop = value;
                  });
                },
              ),
            ),
            _buildInputCard(
              'Select Soil Type:',
              SoilDropdown(
                selectedSoil: selectedSoil,
                onChanged: (value) {
                  setState(() {
                    selectedSoil = value;
                  });
                },
              ),
            ),
            _buildInputCard(
              'Enter Plot Size:',
              PlotSizeInput(
                plotSize: plotSize,
                onChanged: (value) {
                  setState(() {
                    plotSize = value;
                  });
                },
              ),
            ),
            _buildInputCard(
              'Select Unit:',
              UnitDropdown(
                selectedUnit: selectedUnit,
                onChanged: (value) {
                  setState(() {
                    selectedUnit = value;
                  });
                },
              ),
            ),
            _buildInputCard(
              'Enter Nutrient Quantity:',
              NutrientQuantityInput(
                nutrientQuantity: nutrientQuantity,
                onChanged: (value) {
                  setState(() {
                    nutrientQuantity = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: RecommendationButton(
                onPressed: recommendFertilizer,
              ),
            ),
            const SizedBox(height: 20),
            if (recommendedFertilizer != null)
              Center(
                child: Text(
                  recommendedFertilizer!,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputCard(String title, Widget child) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            child,
          ],
        ),
      ),
    );
  }
}
