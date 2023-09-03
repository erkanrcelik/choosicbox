import 'package:carousel_slider/carousel_slider.dart';
import 'package:choosicbox/config/path/svg_path.dart';
import 'package:choosicbox/utils/ui/card/settings_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OverViewView extends StatelessWidget {
  const OverViewView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1634704784915-aacf363b021f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      'https://images.unsplash.com/photo-1624996379697-f01d168b1a52?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      'https://images.unsplash.com/photo-1621932953986-15fcf084da0f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80',
    ];
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
      margin: const EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
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
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 30.w,),
            SvgPath(svgPath: 'choosicbox_logo',),
            SizedBox(width: 10.w,),
            Text('Choosicbox',style: Theme.of(context).textTheme.headlineSmall,)
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notification_add_outlined,), // Bildirim ikonu
            onPressed: () {
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0.w),
        child: Column(
          children: [
            CarouselSlider(
              disableGesture: true,
              options: CarouselOptions(
                padEnds: false,
                viewportFraction: 1,
                aspectRatio: 500.0,
                height: 200.h,
                disableCenter: true,
                enableInfiniteScroll: true,
                enlargeStrategy: CenterPageEnlargeStrategy.scale,
                enlargeCenterPage: true,
                autoPlayInterval: const Duration(milliseconds: 1500),
                scrollDirection: Axis.horizontal,
                autoPlay: true,
                autoPlayAnimationDuration:
                const Duration(milliseconds: 800),
              ),
              items: imageSliders,
            ),

          ],
        ),
      )
    );
  }
}
