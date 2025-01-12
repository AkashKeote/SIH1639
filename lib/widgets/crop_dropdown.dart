import 'package:flutter/material.dart';

class CropDropdown extends StatelessWidget {
  final String? selectedCrop;
  final ValueChanged<String?>? onChanged;

  CropDropdown({super.key, this.selectedCrop, this.onChanged});

  final List<String> crops = ['Wheat', 'Rice', 'Corn', 'Sugarcane'];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        prefixIcon: const Icon(Icons.grain),
        fillColor: Colors.white,
        filled: true,
      ),
      value: selectedCrop,
      items: crops.map((String crop) {
        return DropdownMenuItem<String>(
          value: crop,
          child: Text(crop),
        );
      }).toList(),
      onChanged: onChanged,
      hint: const Text('Select Crop'),
    );
  }
}
