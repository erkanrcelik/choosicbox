import 'package:choosicbox/utils/ui/Input/inputs.dart';
import 'package:choosicbox/utils/ui/Input/models.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ölçeklendirilebilir TextField'),
        ),
        body: Center(
          child: createCustomInput<TextInputProps>(
            props: TextInputProps(
              controller: _textEditingController,
              hintText: 'Enter your text...',
            ),
          ),
      ),
      ),
    );
  }
}
