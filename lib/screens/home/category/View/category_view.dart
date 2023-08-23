import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: 0,
          right: 0,
          child: Image.asset('assets/images/pizzaTopScreen.png'),
        ),
        Positioned(
          top: 37,
          left: 27,
          child: InkWell(
            onTap: () {
              print('aaa');
              Navigator.of(context).pop();
            },
            child: Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffD3D1D8),
                    offset: Offset(5, 10), // X, Y offset
                    blurRadius: 20,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Image.asset('assets/icons/back.png'),
            ),
          ),
        ),
        Positioned(
            top: 112,
            left: 26,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Fast',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff272D2F),
                  ),
                ),
                const Text(
                  'Food',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFE724C),
                  ),
                ),
                const Text(
                  '80 type of pizza',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff9796A1),
                  ),
                ),
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(top: 306, left: 26, right: 26),
          child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Container(
                  height: 20,
                  padding: EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      const Text(
                        'Short by:',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            child: Row(children: [
                          const Text('Popular',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFE724C))),
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset('assets/icons/arrowDown.png'),
                        ])),
                      ),
                      const Spacer(),
                      InkWell(
                          onTap: () {},
                          child: Image.asset('assets/buttons/filter.png')),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                CategoryViewCard(
                    businessName: 'Chicken Hawaiian',
                    description: 'Chicken, Cheese and pineapple',
                    image: 'restaurant'),
                CategoryViewCard(
                    businessName: 'Chicken Hawaiian',
                    description: 'Chicken, Cheese and pineapple',
                    image: 'restaurant'),
                CategoryViewCard(
                    businessName: 'Chicken Hawaiian',
                    description: 'Chicken, Cheese and pineapple',
                    image: 'restaurant'),
                CategoryViewCard(
                    businessName: 'Chicken Hawaiian',
                    description: 'Chicken, Cheese and pineapple',
                    image: 'restaurant'),
              ])),
        ),
      ]),
    );
  }
}

class CategoryViewCard extends StatelessWidget {
  const CategoryViewCard({
    super.key,
    required this.image,
    required this.businessName,
    required this.description,
  });

  final String image;
  final String businessName;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      margin: EdgeInsets.only(bottom: 30),
      width: double.infinity,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
          color: Color(0xffD3D1D8),
          offset: Offset(0, 2), // X, Y offset
          blurRadius: 15,
          spreadRadius: 0,
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(clipBehavior: Clip.none, children: [
            Container(
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: Image.asset('assets/images/$image.png',
                    width: double.infinity, fit: BoxFit.contain)),
            Positioned(
                top: -14,
                left: -15,
                child: Image.asset('assets/icons/price.png')),
            Positioned(
              top: -5,
              right: -3,
              child: Container(
                  padding: const EdgeInsets.only(
                      top: 9, left: 8, bottom: 7, right: 6),
                  child: Image.asset('assets/icons/favorite.png')),
            ),
            Positioned(
              bottom: -12,
              left: 13,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffD3D1D8),
                          offset: Offset(0, 2), // X, Y offset
                          blurRadius: 15,
                          spreadRadius: 0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(100)),
                  padding: const EdgeInsets.only(
                      top: 9, left: 8, bottom: 7, right: 6),
                  child: Image.asset('assets/icons/rating.png')),
            ),
          ]),
          Container(
            padding: const EdgeInsets.only(left: 14, top: 26),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  businessName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                Text(
                  description,
                  style: TextStyle(
                      color: Color(0xff5B5B5E),
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
