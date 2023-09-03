import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextSongView extends StatelessWidget {
  const NextSongView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://www.peple.com.tr/wp-content/uploads/2021/12/cekilis-kampanyasi-993_520.png',
      'https://www.peple.com.tr/wp-content/uploads/2021/12/cekilis-kampanyasi-993_520.png',
      'https://www.peple.com.tr/wp-content/uploads/2021/12/cekilis-kampanyasi-993_520.png',
    ];
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
      margin: const EdgeInsets.all(5.0).w,
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(250.0).r),
          child: Stack(
            children: <Widget>[
              Image.network(
                item,
                fit: BoxFit.cover,
                width: 1000.0,
                height: 1000.0,
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                ),
              ),
            ],
          )),
    ))
        .toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text('Sıradaki Şarkılar'),
      ),
      body: Column(
        children: [
          CarouselSlider(
            disableGesture: true,
            options: CarouselOptions(
              viewportFraction: 0.6,
              aspectRatio: 500.0,
              height: 220.h,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              autoPlayInterval: const Duration(minutes: 5),
              scrollDirection: Axis.horizontal,
              autoPlay: true,
              autoPlayAnimationDuration:
              const Duration(milliseconds: 800),
            ),
            items: imageSliders,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text('Sırada 10 Şarkı Var'),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.music_note),
                  title: Text('Şarkı Adı'),
                  subtitle: Text('Şarkıcı Adı'),
                  trailing: Icon(Icons.more_vert),
                );
              },
            ),
          ),
        ],
      )
    );
  }
}
