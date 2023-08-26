import 'package:flutter/material.dart';

class CardNumberInput extends StatefulWidget {
  const CardNumberInput({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.labelText,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final String labelText;

  @override
  _CardNumberInputState createState() => _CardNumberInputState();
}

class _CardNumberInputState extends State<CardNumberInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: const TextStyle(
            color: Color(0xFF414042),
            fontSize: 14,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 16),
        Container(
          width: 350,
          height: 60,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 0.50, color: Color(0xFFE4DEDE)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: TextFormField(
            controller: widget.controller,
            validator: _validatePassword,
            obscureText: _obscureText,
            decoration: InputDecoration(
              hintText: widget.hintText,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(15),
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
              ),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.grey, // Change the color as needed
              ),
            ),
          ),
        )
      ],
    );
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Kart numarasi boş olamaz';
    } else if (value.length < 16) {
      return 'Kart numarasi en az 16 karakter olmalıdır';
    }
    return null;
  }
}
