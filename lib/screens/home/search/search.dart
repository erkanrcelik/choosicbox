import 'package:flutter/material.dart';
class RestaurantDetailPage extends StatefulWidget {
  @override
  _RestaurantDetailPageState createState() => _RestaurantDetailPageState();
}

class _RestaurantDetailPageState extends State<RestaurantDetailPage> {
  double imageHeightPercentage = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * imageHeightPercentage / 100,
              color: Colors.blue, // Change this to your image
              child: Center(
                child: Text("Restaurant Image"),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * (100 - imageHeightPercentage) / 100,
              padding: EdgeInsets.all(16.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Restaurant Name",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text("Address: Restaurant Address"),
                  SizedBox(height: 8),
                  Text("Phone: Restaurant Phone Number"),
                  SizedBox(height: 8),
                  // Add more restaurant information here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
