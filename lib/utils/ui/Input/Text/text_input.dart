import 'package:flutter/material.dart';

import '../models.dart';

class TextInput extends StatelessWidget {
  const TextInput({Key? key, required this.props}) : super(key: key);
  final TextInputProps props;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: props.controller,
      decoration: InputDecoration(
        hintText: props.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
