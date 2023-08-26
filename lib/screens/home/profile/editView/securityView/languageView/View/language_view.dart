import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguageSelectionScreen extends StatefulWidget {
  @override
  _LanguageSelectionScreenState createState() => _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  List<String> _languages = [
    'English',
    'Spanish',
    'French',
    'German',
    'Chinese',
  ];

  String _selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language Selection'),
      ),
      body: ListView.builder(
        itemCount: _languages.length,
        itemBuilder: (context, index) {
          return RadioListTile(
            title: Text(_languages[index]),
            value: _languages[index],
            groupValue: _selectedLanguage,
            onChanged: (value) {
              setState(() {
                _selectedLanguage = value!;
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Implement your language selection logic here
          // You can use the value from _selectedLanguage
        },
        label: Text('Save Selection'),
      ),
    );
  }
}