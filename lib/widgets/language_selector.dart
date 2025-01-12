import 'package:flutter/material.dart';

class LanguageSelector extends StatelessWidget {
  final String? selectedLanguage;
  final ValueChanged<String?>? onChanged;

  LanguageSelector({super.key, this.selectedLanguage, this.onChanged});

  final List<String> languages = ['English', 'Hindi', 'Marathi'];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
      value: selectedLanguage,
      items: languages.map((String language) {
        return DropdownMenuItem<String>(
          value: language,
          child: Text(language),
        );
      }).toList(),
      onChanged: onChanged,
      hint: const Text('Select Language'),
    );
  }
}
