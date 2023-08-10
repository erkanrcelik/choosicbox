import 'package:flutter/material.dart';

class GeneralInput extends StatelessWidget {
  const GeneralInput({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.labelText,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final String labelText;

  String? _validateInput(String? value) {
    if (value == null || value.isEmpty) {
      return '$labelText boş olamaz';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            color: Color(0xFF414042),
            fontSize: 14,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w400,
          ),
        ),
        Container(
          width: 400,
          height: 50,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0.50, color: Color(0xFFBCBEC0)),
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          child: TextFormField(
            controller: controller,
            validator: _validateInput,
            decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(15),
            ),
          ),
        )
      ],
    );
  }
}
