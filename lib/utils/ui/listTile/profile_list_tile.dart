import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  ProfileListTile({
    Key? key,
    required this.title,
    required this.onTap,
    required this.image,
  }) : super(key: key);

  final String title;
  final VoidCallback onTap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 384,
        height: 81,
        decoration: BoxDecoration(
          color: Colors.white, // You can use your own custom color variable here
          borderRadius: BorderRadius.circular(19),
          boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 20,
                offset: Offset(0, 2),
              ),
            ],
        ),
        child: Center(
          child: ListTile(
            leading: Image.asset(image),
            title: Text(title),
            trailing: Icon(Icons.arrow_right_alt_rounded),
          ),
        ),
      ),
    );
  }
}
