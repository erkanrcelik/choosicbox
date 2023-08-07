import 'package:flutter/cupertino.dart';

class CustomInputProps {
  final TextEditingController controller;
  final String hintText;
  final InputType type;
  final Map<String, dynamic> textFieldProps;

  CustomInputProps({
    required this.controller,
    required this.hintText,
    this.type = InputType.text,
    this.textFieldProps = const {},
  });
}

enum InputType {
  text,
  select,
  password,
  email,
  confPassword,
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
    required String hintText, required Map<String, Object> textFieldProps,
  }) : super(controller: controller, hintText: hintText);
}

class PasswordInputProps extends CustomInputProps {
  PasswordInputProps({
    required TextEditingController controller,
    required String hintText,
  }) : super(controller: controller, hintText: hintText);
}

class EmailInputProps extends CustomInputProps {
  EmailInputProps({
    required TextEditingController controller,
    required String hintText,
  }) : super (controller: controller, hintText: hintText);
}
class ConfirmPasswordInputProps extends CustomInputProps {
  ConfirmPasswordInputProps({
    required TextEditingController controller,
    required String hintText,
  }) : super (controller: controller, hintText: hintText);
}