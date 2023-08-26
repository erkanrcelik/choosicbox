import 'package:flutter/material.dart';

class PhoneNumberInput extends StatefulWidget {
  const PhoneNumberInput({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.labelText,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final String labelText;

  @override
  _PhoneNumberInputState createState() => _PhoneNumberInputState();
}

class _PhoneNumberInputState extends State<PhoneNumberInput> {
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
                  Icons.numbers,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Telefon Numarasi boş olamaz';
    } else if (value.length < 11) {
      return 'Telefon Numarasi en az 11 karakter olmalıdır';
    }
    return null;
  }
}
