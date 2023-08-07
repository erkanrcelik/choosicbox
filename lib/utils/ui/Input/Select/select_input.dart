import 'package:flutter/material.dart';

import '../models.dart';

class SelectInput extends StatelessWidget {
  const SelectInput({Key? key, required this.props}) : super(key: key);
  final SelectInputProps props;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 50,
      decoration: ShapeDecoration(
        color: const Color(0xBE737EFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: TextField(
        controller: props.controller,
        decoration: InputDecoration(
          hintText: props.hintText,
          border: InputBorder.none, // Remove the default TextField border
          contentPadding: EdgeInsets.all(15), // Adjust content padding
        ),
      ),
    );
  }
}
