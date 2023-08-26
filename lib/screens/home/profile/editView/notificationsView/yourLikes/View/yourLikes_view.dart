
import 'package:flutter/material.dart';



class YourLikesScreen extends StatelessWidget {
  YourLikesScreen({Key? key}) : super(key: key);
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
          ],
        ),
      ),
    );
  }
}
