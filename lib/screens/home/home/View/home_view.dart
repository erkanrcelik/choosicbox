import 'package:choosicbox/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: DrawerPage(screenWidth: screenWidth),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                // Açma butonunun simgesini burada değiştirebilirsiniz
                color: Colors.grey,
                size: 30,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'deliver_to'.tr,
              style: const TextStyle(color: Colors.grey, fontSize: 17),
            ),
            const Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.grey,
              size: 17,
            )
          ]),
          const Text(
            '4102 Pretty View Lane',
            style: TextStyle(fontSize: 18),
          )
        ]),
        actions: [
          CircleAvatar(
            child: Image.asset(
              Assets.imagesPp,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20)
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, top: 32),
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 19, bottom: 30),
                height: 56,
                width: screenWidth,
                child: Row(
                  children: [
                    Container(
                      height: 53,
                      width: screenWidth * 0.70,
                      padding: const EdgeInsets.only(
                          top: 15, bottom: 15, right: 9, left: 18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffFCFCFD),
                        border: Border.all(
                            width: 1, color: const Color(0xffEFEFEF)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            color: Color(0xff767F9D),
                          ),
                          SizedBox(width: 14),
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.zero,
                                label: Text('Find for food or restaurant...'),
                                labelStyle: TextStyle(
                                  color: Color(0xff9AA0B4),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 18),
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xffE9EDF2),
                              offset: Offset(0, 15),
                              // X, Y offset
                              blurRadius: 30,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/buttons/filter.png',
                        ))
                  ],
                ),
              ),
              const SizedBox(),
              SizedBox(
                height: 104,
                child:
                    ListView(scrollDirection: Axis.horizontal, children: const [
                  musicTypeItem(
                      isOrange: true, icon: 'hamburger', text: 'Burger'),
                  musicTypeItem(icon: 'donut', text: 'Donat'),
                  musicTypeItem(icon: 'pizza', text: 'Pizza'),
                  musicTypeItem(icon: 'hotdog', text: 'Mexican'),
                  musicTypeItem(icon: 'cheese', text: 'Asian'),
                ]),
              ),
              const SizedBox(height: 30),
              Container(
                  margin: const EdgeInsets.only(right: 24),
                  height: 20,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Near From You',
                        style: TextStyle(
                            color: Color(0xff323643),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Text('View All',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFE724C)))
                    ],
                  )),
              const SizedBox(height: 15),
              SizedBox(
                height: 230,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    musicCard('restaurant', 'McDonald\'s', [
                      cardText('BURGER'),
                      cardText('CHICKEN'),
                      cardText('FAST FOOD')
                    ]),
                    musicCard('restaurant', 'McDonald\'s', [
                      cardText('BURGER'),
                      cardText('CHICKEN'),
                      cardText('FAST FOOD')
                    ]),
                    musicCard(
                      'restaurant',
                      'McDonald\'s',
                      [
                        cardText('BURGER'),
                        cardText('CHICKEN'),
                        cardText('FAST FOOD')
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container musicCard(
      String restaurant, String businessName, List<Widget> cardTextList) {
    return Container(
      height: 230,
      width: 270,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(children: [
            Image.asset('assets/images/$restaurant.png', fit: BoxFit.cover),
            Positioned(
              top: 11,
              left: 10,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  padding: const EdgeInsets.only(
                      top: 9, left: 8, bottom: 7, right: 6),
                  child: Image.asset('assets/icons/rating.png')),
            ),
            Positioned(
              top: -5,
              right: -3,
              child: Container(
                  padding: const EdgeInsets.only(
                      top: 9, left: 8, bottom: 7, right: 6),
                  child: Image.asset('assets/icons/favorite.png')),
            ),
          ]),
          Padding(
              padding: const EdgeInsets.only(left: 13, top: 13, bottom: 6),
              child: Text(
                businessName,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 13, bottom: 10),
            child: Row(
              children: [
                Image.asset('assets/icons/bike.png'),
                const SizedBox(width: 7),
                const Text('Free Delivery',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff7E8392))),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 13),
            child: Row(
              children: cardTextList,
            ),
          )
        ],
      ),
    );
  }

  Padding cardText(String text) => Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Text(text,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff8A8E9B))));
}

class musicTypeItem extends StatelessWidget {
  const musicTypeItem({
    super.key,
    required this.icon,
    required this.text,
    this.isOrange = false,
  });

  final String icon;
  final String text;
  final bool? isOrange;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      height: 100,
      width: 64,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color(0xffD3D1D8), offset: Offset(0, 2), // X, Y offset
              blurRadius: 15, spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.circular(100),
          color: isOrange! ? const Color(0xffFE724C) : Colors.white),
      child: Column(
        children: [
          const SizedBox(height: 5),
          Image.asset('assets/images/$icon.png', height: 49, width: 49),
          const SizedBox(
            height: 11,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: isOrange! ? Colors.white : const Color(0xff67666D)),
          )
        ],
      ),
    );
  }
}

class DrawerPage extends StatelessWidget {
  const DrawerPage({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: screenWidth * 0.6,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/pp.png'),
              ),
              const SizedBox(height: 20),
              const Text('Reis Wick',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
              const Text(
                'reiswick@gmail.com',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              const SizedBox(height: 30),
              const drawerListWidget(icon: 'document', text: 'My Orders'),
              const drawerListWidget(icon: 'profile', text: 'My Profile'),
              const drawerListWidget(icon: 'location', text: 'Delivery Adress'),
              const drawerListWidget(icon: 'wallet', text: 'Payment Methods'),
              const drawerListWidget(icon: 'message', text: 'Contact Us'),
              const drawerListWidget(icon: 'setting', text: 'Settings'),
              const drawerListWidget(icon: 'helps', text: 'Help & FAQs'),
              const SizedBox(height: 50),
              InkWell(
                  child: Container(
                      width: 120,
                      padding: const EdgeInsets.only(
                          left: 9, top: 9, bottom: 9, right: 14),
                      decoration: BoxDecoration(
                          color: const Color(0xffFE724C),
                          borderRadius: BorderRadius.circular(29)),
                      child: Row(children: [
                        InkWell(
                            onTap: () {},
                            child: Image.asset('assets/buttons/log_out.png')),
                        const SizedBox(width: 9),
                        const Text(
                          'Log Out',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        )
                      ])))
            ]),
          ),
        ),
      ),
    );
  }
}

class drawerListWidget extends StatelessWidget {
  const drawerListWidget({super.key, required this.icon, required this.text});

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: InkWell(
        child: SizedBox(
          height: 23,
          child: Row(
            children: [
              Image.asset('assets/icons/$icon.png', height: 23, width: 23),
              const SizedBox(width: 20),
              Text(text,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Sofia'))
            ],
          ),
        ),
      ),
    );
  }
}
