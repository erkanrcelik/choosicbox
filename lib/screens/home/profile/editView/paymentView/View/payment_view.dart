import 'package:flutter/material.dart';

import '../../../../home/View/home_view.dart';
import '../../../View/profile_view.dart';

class PaymentSettingsScreen extends StatelessWidget {
  PaymentSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: DrawerPage(screenWidth: screenWidth),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.arrow_back,
                // Açma butonunun simgesini burada değiştirebilirsiniz
                color: Colors.grey,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfilePageView()),
                );
              },
            );
          },
        ),
        actions: [
          CircleAvatar(
            child: Image.asset(
              'assets/images/pp.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20)
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Container(
                width: 361,
                height: 738,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Color(0x28DEDDDD),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: -136,
                      top: 174,
                      child: Container(
                        width: 282,
                        height: 157,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0x72253939),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x2D253939),
                              blurRadius: 60.42,
                              offset: Offset(0, 6.04),
                              spreadRadius: 15.11,
                            )
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 24.17,
                              top: 46.58,
                              child: Container(
                                width: 226.89,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 50,
                                            height: 77,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0.83,
                                                  top: 7.42,
                                                  child: Opacity(
                                                    opacity: 0.90,
                                                    child: Text(
                                                      'Scan me',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12.08,
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 3,
                                                        letterSpacing: -0.12,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 0,
                                                  top: 37,
                                                  child: Container(
                                                    width: 40,
                                                    height: 40,
                                                    decoration: ShapeDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/icons/paypal.png"),
                                                        fit: BoxFit.fill,
                                                      ),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6.04),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 291),
                                    Container(
                                      width: 51.36,
                                      height: 39.24,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 51.36,
                                              height: 39.24,
                                              child: Stack(children: []),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 24.17,
                              top: 30.21,
                              child: Container(
                                width: 191,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Opacity(
                                      opacity: 0.90,
                                      child: Text(
                                        'Ronald Richards',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.11,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 2.40,
                                          letterSpacing: -0.15,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 209),
                                    Opacity(
                                      opacity: 0.90,
                                      child: Text(
                                        'Tap to pay',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 3.63,
                                          letterSpacing: -0.10,
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
                    ),
                    Positioned(
                      left: 183,
                      top: 174,
                      child: Container(
                        width: 282,
                        height: 157,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0x72FF5F00),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x2DFF5F00),
                              blurRadius: 60.41,
                              offset: Offset(0, 6.04),
                              spreadRadius: 15.10,
                            )
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 212.94,
                              top: -18.12,
                              child: Container(
                                width: 391.14,
                                height: 391.14,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFE17535),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 252.20,
                              top: 87.59,
                              child: Container(
                                width: 342.82,
                                height: 342.82,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFE68449),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 24.16,
                              top: 30.20,
                              child: Container(
                                width: 230,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Opacity(
                                      opacity: 0.90,
                                      child: Text(
                                        'Jerome Bell',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.10,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 2.40,
                                          letterSpacing: -0.15,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 241),
                                    Opacity(
                                      opacity: 0.90,
                                      child: Text(
                                        'Tap to pay',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 3.62,
                                          letterSpacing: -0.10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 24.16,
                              top: 64.53,
                              child: Container(
                                width: 227.55,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Opacity(
                                            opacity: 0.90,
                                            child: Text(
                                              'Scan me',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.08,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w600,
                                                height: 3,
                                                letterSpacing: -0.12,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 30,
                                            height: 30,
                                            decoration: ShapeDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/icons/qr.png"),
                                                fit: BoxFit.fill,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(6.04),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 273),
                                    Container(
                                      width: 49.04,
                                      height: 39.14,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 49.04,
                                              height: 39.14,
                                              child: Stack(children: [
                                                Image.asset("assets/icons/mastercard_logo.svg")
                                              ]),
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
                    ),
                    Positioned(
                      left: 27,
                      top: 68,
                      child: Container(
                        width: 319,
                        height: 50,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/icons/mastercard.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 40),
                            Opacity(
                              opacity: 0.10,
                              child: Container(
                                width: 50,
                                height: 50,
                                child: Stack(children: [

                                ]),
                              ),
                            ),
                            const SizedBox(width: 40),
                            Opacity(
                              opacity: 0.10,
                              child: Container(
                                width: 80,
                                height: 50,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 33.88,
                                      top: 2.89,
                                      child: Container(
                                        width: 46.12,
                                        height: 47.11,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/icons/qr.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 26.47,
                                        height: 41.59,
                                        child: Stack(children: []),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 36,
                      top: 152,
                      child: Container(
                        width: 300,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 0.50,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFBCBEC0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 13,
                      top: -10,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Select your payment method',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Imprima',
                                      fontWeight: FontWeight.w400,
                                      height: 1.50,
                                      letterSpacing: 1.50,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 45,
                      top: 301,
                      child: Container(
                        width: 282,
                        height: 157,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0xFF633DF7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x2D633EF8),
                              blurRadius: 60.41,
                              offset: Offset(0, 6.04),
                              spreadRadius: 15.10,
                            )
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 214,
                              top: -22,
                              child: Container(
                                width: 391.14,
                                height: 391.14,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF8567FF),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 252.20,
                              top: 87.59,
                              child: Container(
                                width: 342.82,
                                height: 342.82,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF7756FF),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 24.16,
                              top: 30.20,
                              child: Container(
                                width: 230,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Opacity(
                                      opacity: 0.90,
                                      child: Text(
                                        'Savannah Nguyen',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.10,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 2.40,
                                          letterSpacing: -0.15,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 195),
                                    Opacity(
                                      opacity: 0.90,
                                      child: Text(
                                        'Tap to pay',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 3.62,
                                          letterSpacing: -0.10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 33,
                              top: 62,
                              child: Container(
                                width: 228.59,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Opacity(
                                            opacity: 0.90,
                                            child: Text(
                                              'Scan me',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.08,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w600,
                                                height: 3,
                                                letterSpacing: -0.12,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 40,
                                            height: 40,
                                            decoration: ShapeDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/icons/qr.png"),
                                                fit: BoxFit.fill,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(6.04),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 274),
                                    Container(
                                      width: 49.08,
                                      height: 39.10,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 49.08,
                                              height: 39.10,
                                              child: Stack(children: [
                                                Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: Image.asset(
                                                      'assets/icons/paypal.png'), // Add your image path here
                                                ),
                                              ]),
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
                    ),
                    Positioned(
                      left: 0,
                      top: 500,
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: ShapeDecoration(
                          color: Color(0x07B786C0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 18,
                              height: 18,
                              child: Stack(children: []),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Or Add New Card',
                              style: TextStyle(
                                color: Color(0xFF954AA1),
                                fontSize: 14,
                                fontFamily: 'Imprima',
                                fontWeight: FontWeight.w400,
                                height: 1.57,
                                letterSpacing: -0.28,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 27,
                      top: 560,
                      child: Container(
                        width: 300,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 0.50,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFBCBEC0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 47,
                      top: 587,
                      child: Container(
                        width: 274,
                        padding: const EdgeInsets.all(10),
                        decoration: ShapeDecoration(
                          color: Color(0xFF954AA1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)),
                          shadows: [
                            BoxShadow(
                              color: Color(0x9BAA6FB4),
                              blurRadius: 4,
                              offset: Offset(4, 6),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 55,
                                    child: Text(
                                      'NEXT',
                                      style: TextStyle(
                                        color: Color(0xFFF9F9F9),
                                        fontSize: 16,
                                        fontFamily: 'Imprima',
                                        fontWeight: FontWeight.w400,
                                        height: 1.38,
                                        letterSpacing: 2.64,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 2),
                                  Transform(
                                    transform: Matrix4.identity()
                                      ..translate(0.0, 0.0)
                                      ..rotateZ(-3.14),
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Stack(
                                        children: [],
                                      ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
