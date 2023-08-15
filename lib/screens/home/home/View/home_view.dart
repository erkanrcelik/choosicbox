import 'package:flutter/material.dart';


class HomePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [//FF6F61 56CCF2
          Container(
            height: 128,
            decoration: BoxDecoration(
              color: Color(0xFFff7f00),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(33),
                bottomRight: Radius.circular(33),
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 50, right: 16),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 65),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Select Location',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Container(
                          child: Text(
                            'New York, USA',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                10,
                    (index) => PlaceCard(
                  category: 'Restaurant',
                  imageUrl: 'https://i.lezzet.com.tr/images-xxlarge-secondary/1-michelin-yildizli-restoran-neolokal-nerede-nedir-kimdir-23419ec4-819a-44d6-976c-4c38a2733cb1.jpg', // Restoran resmi URL'sini buraya ekleyin
                  name: 'Place $index',
                  location: 'New York, USA',
                  distance: '$index m',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlaceCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String location;
  final String distance;
  final String category;

  PlaceCard({
    required this.imageUrl,
    required this.name,
    required this.location,
    required this.distance,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 237,
      height: 300,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.network(
                imageUrl,
                width: 217,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.blue, size: 14),
                    SizedBox(width: 4),
                    Text(
                      distance,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 7),
                Row(
                  children: [
                    Icon(Icons.category, color: Colors.grey, size: 14),
                    SizedBox(width: 4),
                    Text(
                      category,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(location),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
