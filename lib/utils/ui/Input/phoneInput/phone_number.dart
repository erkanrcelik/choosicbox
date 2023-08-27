import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field2/country_picker_dialog.dart';
import 'package:intl_phone_field2/intl_phone_field.dart';

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
          width: 320.w,
          height: 70.h,
          child: IntlPhoneField(
            textFieldPadding: EdgeInsets.all(0),
            disableLengthCheck: true,

            positionedPopup: false,
            popupWidth: 300.w,
            autovalidateMode: AutovalidateMode.onUserInteraction,

            pickerDialogStyle: PickerDialogStyle(
              searchFieldPadding: EdgeInsets.symmetric(horizontal: 10.w),
              backgroundColor: Colors.white.withOpacity(0.85),
              listTileDivider: const SizedBox(),
            ),
            textFieldIsDense: true,
            decoration: InputDecoration(
              labelText: 'Phone Number',
              border: OutlineInputBorder(),

            ),
            languageCode: "tr_TR",
          ),
        ),
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
