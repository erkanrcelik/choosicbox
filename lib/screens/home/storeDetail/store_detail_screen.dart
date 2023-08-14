import 'package:flutter/material.dart';

class RestaurantDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Placeholder(), // Burada resim kaydırma widget'ını kullanabilirsiniz
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Restoran Adı",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    SizedBox(height: 8),
                    Text("Restoran Konumu", style: TextStyle(color: Colors.black)),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        Text("4.5", style: TextStyle(color: Colors.black)),
                      ],
                    ),
                    SizedBox(height: 16),
                    DefaultTabController(
                      length: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TabBar(
                            tabs: [
                              Tab(text: "About"),
                              Tab(text: "Review"),
                              Tab(text: "Photo"),
                              Tab(text: "Video"),
                            ],
                            labelColor: Colors.black, // Aktif sekmenin yazı rengi
                            unselectedLabelColor: Colors.grey, // Diğer sekmelerin yazı rengi
                          ),
                          SizedBox(height: 12),
                          Container(
                            height: 200, // İçeriğe uygun yüksekliği ayarlayın
                            child: TabBarView(
                              children: [
                                Text("About content", style: TextStyle(color: Colors.black)),
                                Text("Review content", style: TextStyle(color: Colors.black)),
                                Text("Photo content", style: TextStyle(color: Colors.black)),
                                Text("Video content", style: TextStyle(color: Colors.black)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
