import 'package:flutter/material.dart';

class SettingsRow extends StatelessWidget {
  final Widget icon;
  final String title;

  SettingsRow({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          icon,
          SizedBox(width: 13),
          Text(
            title,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}