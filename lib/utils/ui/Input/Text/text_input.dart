import 'package:flutter/material.dart';

import '../models.dart';

class TextInput extends StatelessWidget {
  const TextInput({Key? key, required this.props}) : super(key: key);
  final TextInputProps props;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 50,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Color(0xFFBCBEC0)),
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
