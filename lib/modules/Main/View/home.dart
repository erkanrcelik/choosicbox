import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              locationSection,
              SizedBox(height: 20),
              searchSection,
              SizedBox(height: 20),
              menuSection,
              SizedBox(height: 20),
              nearFromYouSection,
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: storeSection,
              ),
              SizedBox(height: 20),
              bestForYouSection,
              SizedBox(height: 20),
              additionalSection,
            ],
          ),
        ),
      ),
    );
  }
}

Widget locationSection = Container(
  padding: const EdgeInsets.all(20),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                "Location",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  "Current location",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.arrow_downward,
                  color: Colors.blue[500],
                ),
              ],
            ),
          ],
        ),
      ),
      Spacer(), // Use Spacer to push the notifications icon to the end
      Icon(
        Icons.notifications,
        color: Colors.blue[500],
      ),
    ],
  ),
);
Widget searchSection = Container(
  padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 0),
  child: Row(
    children: [
      Expanded(
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search address, or near you... ",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
      SizedBox(width: 8),
      Icon(
        Icons.settings,
        color: Colors.blue[500],
      ),
    ],
  ),
);
Widget menuSection = Container(
  padding: const EdgeInsets.all(20),
  height: 150, // Adjust the height as needed
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 5, // Number of stores
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          // Handle the click action here
        },
        child: Container(
          width: 100,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300], // Placeholder color
                ),
                // You can add an Image widget here to display the store's image
              ),
              SizedBox(height: 10),
              Text(
                "Store Name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
    },
  ),
);
Widget nearFromYouSection = Container(
  padding: const EdgeInsets.all(10),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                "Near From You",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          // Handle the "See More" action
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: const Text(
            "See More",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
      ),
    ],
  ),
);
Widget storeSection = SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Container(
    padding: const EdgeInsets.all(10),
    child: Row(
      children: [
        for (int index = 0; index < 5; index++)
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                // Handle card click action here
              },
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: 150,
                  height: 200,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Store $index",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Icon(
                            Icons.location_on,
                            color: Colors.blue[500],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        "Address or Description",
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    ),
  ),
);
Widget bestForYouSection = Container(
  padding: const EdgeInsets.all(10),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                "Best For You",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          // Handle the "See More" action
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: const Text(
            "See More",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
      ),
    ],
  ),
);
Widget additionalSection = Container(
  padding: const EdgeInsets.all(10),
  child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // First Container (Image Placeholder)
          Container(
            width: 80,
            height: 80,
            color: Colors.grey[300], // Placeholder color
          ),
          // Second Container (Store Name and Distance)
          Container(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Store Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      "1.5 km", // You can replace this with actual distance
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.location_on,
                      color: Colors.blue[500],
                      size: 18,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Third Container (Star Icon)
          Icon(
            Icons.star,
            color: Colors.yellow[600],
          ),
          // Fourth Container (Information Icon)
          Icon(
            Icons.info_outline,
            color: Colors.blue[500],
          ),
        ],
      ),
      SizedBox(height: 10), // Add some spacing between rows
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // First Container (Image Placeholder)
          Container(
            width: 80,
            height: 80,
            color: Colors.grey[300], // Placeholder color
          ),
          // Second Container (Store Name and Distance)
          Container(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Store Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      "1.5 km", // You can replace this with actual distance
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.location_on,
                      color: Colors.blue[500],
                      size: 18,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Third Container (Star Icon)
          Icon(
            Icons.star,
            color: Colors.yellow[600],
          ),
          // Fourth Container (Information Icon)
          Icon(
            Icons.info_outline,
            color: Colors.blue[500],
          ),
        ],
      ), Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // First Container (Image Placeholder)
          Container(
            width: 80,
            height: 80,
            color: Colors.grey[300], // Placeholder color
          ),
          // Second Container (Store Name and Distance)
          Container(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Store Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      "1.5 km", // You can replace this with actual distance
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.location_on,
                      color: Colors.blue[500],
                      size: 18,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Third Container (Star Icon)
          Icon(
            Icons.star,
            color: Colors.yellow[600],
          ),
          // Fourth Container (Information Icon)
          Icon(
            Icons.info_outline,
            color: Colors.blue[500],
          ),
        ],
      ),
      // Repeat the above Row for a total of 5 rows
      // You can copy and paste the Row code here to create more rows

    ],
  ),
);




