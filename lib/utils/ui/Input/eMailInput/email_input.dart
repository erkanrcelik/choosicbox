import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.labelText,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final String labelText;

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'E-mail adresi boş olamaz';
    } else if (!RegExp(
        r'^[\w-]+(\.[\w-]+)*@([a-z0-9A-Z-]+\.)+[a-zA-Z]{2,}$')
        .hasMatch(value)) {
      return 'Geçerli bir e-mail adresi girin';
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
          style: const TextStyle(
            color: Color(0xFF414042),
            fontSize: 14,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          width: 350,
          height: 60,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0.50, color: Color(0xFFE4DEDE)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Icon(
                  Icons.person,
                  color: Colors.grey, // Change the color as needed
                ),
              ),
              Expanded(
                child: TextFormField(
                  controller: controller,
                  validator: _validateEmail,
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(15),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
