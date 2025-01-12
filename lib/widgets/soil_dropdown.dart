import 'package:flutter/material.dart';

class SoilDropdown extends StatelessWidget {
  final String? selectedSoil;
  final ValueChanged<String?>? onChanged;

  SoilDropdown({super.key, this.selectedSoil, this.onChanged});

  final List<String> soils = ['Loamy', 'Clay', 'Sandy', 'Silt'];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        prefixIcon: const Icon(Icons.landscape),
        fillColor: Colors.white,
        filled: true,
      ),
      value: selectedSoil,
      items: soils.map((String soil) {
        return DropdownMenuItem<String>(
          value: soil,
          child: Text(soil),
        );
      }).toList(),
      onChanged: onChanged,
      hint: const Text('Select Soil'),
    );
  }
}
