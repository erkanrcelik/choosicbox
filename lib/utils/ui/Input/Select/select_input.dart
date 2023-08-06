import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models.dart';

class SelectInput extends StatelessWidget {
  const SelectInput({Key? key, required this.props}) : super(key: key);
  final SelectInputProps props;

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
