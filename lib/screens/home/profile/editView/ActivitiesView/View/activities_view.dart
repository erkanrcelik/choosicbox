
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../config/theme/colors.dart';

import '../../../../../../utils/ui/ListTile/activity_list_view.dart';

class ActivitiesPage extends StatelessWidget {
  ActivitiesPage({Key? key}) : super(key: key);
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
            Positioned(
              top: -10,
              left: -40,
              child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorConstants.firstColor,
                      width: 30,
                    ),
                    borderRadius: BorderRadius.circular(150),
                  )),
            ),
            Positioned(
              top: -80,
              left: 10,
              child: Container(
                  height: 165,
                  width: 165,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFECE7),
                    borderRadius: BorderRadius.circular(150),
                  )),
            ),
            Positioned(
              top: -80,
              right: -60,
              child: Container(
                  height: 181,
                  width: 181,
                  decoration: BoxDecoration(
                    color: ColorConstants.firstColor,
                    borderRadius: BorderRadius.circular(150),
                  )),
            ),
            Positioned(
              top: 50, // Adjust the position as needed
              left: 20, // Adjust the position as needed
              child: GestureDetector(
                onTap: () {
                  Get.toNamed("/index");
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 25,
              right: 25,
              bottom: 60,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 37),
                    ActivitiesListTile(
                        title: "Connected Places", onTap: (){}, image: 'assets/icons/bar-building.png'),
                    SizedBox(height: 37),
                    ActivitiesListTile(
                        title: "Last Played", onTap: (){}, image: 'assets/icons/last-24-hours.png'),
                    SizedBox(height: 37),
                    ActivitiesListTile(
                        title: "Most Listened", onTap: (){}, image: 'assets/icons/search-more.png'),
                    SizedBox(height: 37),
                    ActivitiesListTile(
                        title: "Thoughts", onTap: (){}, image: 'assets/icons/neutral-decision.png'),
                    SizedBox(height: 37),
                    ActivitiesListTile(
                        title: "Your Likes", onTap: (){}, image: 'assets/icons/like.png'),
                    SizedBox(height: 37),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
