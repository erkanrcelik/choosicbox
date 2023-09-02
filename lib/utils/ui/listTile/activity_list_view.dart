import 'package:flutter/material.dart';

class ActivitiesListTile extends StatelessWidget {
  ActivitiesListTile({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 400,
        height: 110,
        decoration: BoxDecoration(
          color: Colors.white,
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
                title: Center(child: Text(title)),
                trailing: Padding(
                  padding: const EdgeInsets.only(top: 40),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                      (index) => Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Chip(
                      backgroundColor: index < 3 ? Theme.of(context).colorScheme.primary : Colors.grey,
                      elevation: 6.0,
                      shape: StadiumBorder(
                          side: BorderSide(
                            width: 1,
                          )),
                      label: Text('        '),
                    ),
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
