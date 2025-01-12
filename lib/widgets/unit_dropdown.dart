import 'package:flutter/material.dart';

class UnitDropdown extends StatelessWidget {
  final String? selectedUnit;
  final ValueChanged<String?>? onChanged;

  UnitDropdown({super.key, this.selectedUnit, this.onChanged});

  final List<String> units = ['Acres', 'Hectares', 'Square Meters'];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        prefixIcon: const Icon(Icons.straighten),
        fillColor: Colors.white,
        filled: true,
      ),
      value: selectedUnit,
      items: units.map((String unit) {
        return DropdownMenuItem<String>(
          value: unit,
          child: Text(unit),
        );
      }).toList(),
      onChanged: onChanged,
      hint: const Text('Select Unit'),
    );
  }
}
