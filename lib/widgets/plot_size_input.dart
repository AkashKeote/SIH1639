import 'package:flutter/material.dart';

class PlotSizeInput extends StatelessWidget {
  final double? plotSize;
  final ValueChanged<double?>? onChanged;

  const PlotSizeInput({super.key, this.plotSize, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: plotSize != null ? plotSize.toString() : '',
      enabled: true,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.crop_square),
        hintText: 'Enter plot size in acres',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter plot size';
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
