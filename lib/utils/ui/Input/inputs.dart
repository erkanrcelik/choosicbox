import 'package:flutter/material.dart';
import 'Password/password_input.dart';
import 'Select/select_input.dart';
import 'Text/text_input.dart';
import 'models.dart';

class CustomInput<T extends CustomInputProps> extends StatelessWidget {
  final T props;

  const CustomInput({super.key, required this.props});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final textFieldWidth = screenWidth * 0.8;
    final textFieldHeight = screenWidth < 600 ? 50.0 : 60.0;

    return Container(
      width: textFieldWidth,
      height: textFieldHeight,
      child: _buildInputWidget(),
    );
  }

  Widget _buildInputWidget() {
    if (props is TextInputProps) {
      return TextInput(props: props as TextInputProps);
    } else if (props is SelectInputProps) {
      return SelectInput(props: props as SelectInputProps);
    } else if (props is PasswordInputProps) {
      return PasswordInput(props: props as PasswordInputProps);
    } else {
      return Container();
    }
  }
}

CustomInput<T> createCustomInput<T extends CustomInputProps>({
  required T props,
}) {
  return CustomInput<T>(props: props);
}
