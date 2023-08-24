import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import '../../../appframe/app_frame.dart';

class StoreDetailScreen extends StatefulWidget {
  @override
  State<StoreDetailScreen> createState() => _StoreDetailScreenState();
}

class _StoreDetailScreenState extends State<StoreDetailScreen> {
  double value = 3.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          splashRadius: 0.00001,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AppFrame()),
            );
          },
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/inside.png"),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: double.infinity,
          ),
          SizedBox(height: 600),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 400),
                Container(
                  width: double.infinity,
                  height: 800,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(27, 22, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Myloks',
                              style: TextStyle(
                                color: Color(0xFF121212),
                                fontSize: 30,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.deepOrange,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Raja Ampat, Papua Barat',
                                  style: TextStyle(
                                    color: Color(0xFF6F7789),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                RatingStars(
                                  value: value,
                                  onValueChanged: (v) {
                                    setState(() {
                                      value = v;
                                    });
                                  },
                                  starBuilder: (index, color) => Icon(
                                    Icons.star,
                                    color: color,
                                  ),
                                  starCount: 5,
                                  starSize: 20,
                                  valueLabelColor: const Color(0xff9b9b9b),
                                  valueLabelTextStyle: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0),
                                  valueLabelRadius: 10,
                                  maxValue: 5,
                                  starSpacing: 2,
                                  maxValueVisibility: true,
                                  valueLabelVisibility: true,
                                  animationDuration:
                                      Duration(milliseconds: 1000),
                                  valueLabelPadding: const EdgeInsets.symmetric(
                                      vertical: 1, horizontal: 8),
                                  valueLabelMargin:
                                      const EdgeInsets.only(right: 8),
                                  starOffColor: const Color(0xffe7e8ea),
                                  starColor: Colors.yellow,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      DefaultTabController(
                          initialIndex: 1,
                          //optional, starts from 0, select the tab by default
                          length: 3,
                          child: Scaffold(
                              appBar: AppBar(
                                title: Text("Tab in Flutter"),
                                backgroundColor: Colors.lightGreen,
                                bottom: TabBar(tabs: [
                                  Tab(
                                    text: "Home",
                                  ),
                                  Tab(
                                    text: "About Us",
                                  ),
                                  Tab(
                                    text: "Contact Us",
                                  )
                                ]),
                              ),
                              body: TabBarView(children: [
                                Container(
                                  //for first tab
                                  height: 400, color: Colors.red,
                                ),
                                Container(
                                  //for second tab
                                  height: 400, color: Colors.green,
                                ),
                                Container(
                                  //for third tab
                                  height: 400, color: Colors.blue,
                                )
                              ]))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
