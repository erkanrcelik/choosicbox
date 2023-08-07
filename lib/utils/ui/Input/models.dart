import 'package:flutter/cupertino.dart';

class CustomInputProps {
  final TextEditingController controller;
  final String hintText;
  final InputType type;

  CustomInputProps({
    required this.controller,
    required this.hintText,
    this.type = InputType.text,
  });
}

enum InputType {
  text,
  select,
  password,
}

class SelectInputProps extends CustomInputProps {
  SelectInputProps({
    required TextEditingController controller,
    required String hintText,
  }) : super(controller: controller, hintText: hintText);
}

class TextInputProps extends CustomInputProps {
  TextInputProps({
    required TextEditingController controller,
    required String hintText,
  }) : super(controller: controller, hintText: hintText);
}

class PasswordInputProps extends CustomInputProps {
  PasswordInputProps({
    required TextEditingController controller,
    required String hintText,
  }) : super(controller: controller, hintText: hintText);
}
