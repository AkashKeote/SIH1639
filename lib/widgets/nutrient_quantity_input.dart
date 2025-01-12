import 'package:flutter/material.dart';

class NutrientQuantityInput extends StatelessWidget {
  final double? nutrientQuantity;
  final ValueChanged<double?>? onChanged;

  const NutrientQuantityInput(
      {super.key, this.nutrientQuantity, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: nutrientQuantity != null ? nutrientQuantity.toString() : '',
      enabled: true,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.science),
        hintText: 'Enter nutrient quantity',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter nutrient quantity';
        }
        if (double.tryParse(value) == null) {
          return 'Enter a valid number';
        }
        return null;
      },
      onChanged: (value) {
        onChanged?.call(double.tryParse(value));
      },
    );
  }
}
