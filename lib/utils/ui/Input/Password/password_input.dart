import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key, required this.props}) : super(key: key);
  final PasswordInputProps props;

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
