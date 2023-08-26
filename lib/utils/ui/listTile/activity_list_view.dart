import 'package:flutter/material.dart';

class ActivitiesListTile extends StatelessWidget {
  ActivitiesListTile({
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
          child: Column(
            children: [
              ListTile(
                title: Text(title),
                trailing: Icon(Icons.arrow_right_alt_rounded),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                      (index) => Container(
                    width: 200 / 5,
                    height: 5,
                    margin: EdgeInsets.symmetric(horizontal: 2.5), // Small gap between line sections
                    color: Colors.black, // You can use your desired line color
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
