import 'package:flutter/material.dart';
import 'package:get/get.dart';






class FAQSupportScreen extends StatelessWidget {
  FAQSupportScreen({Key? key}) : super(key: key);
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              top: -10,
              left: -40,
              child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                      width: 30,
                    ),
                    borderRadius: BorderRadius.circular(150),
                  )),
            ),
            Positioned(
              top: -80,
              left: 10,
              child: Container(
                  height: 165,
                  width: 165,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFECE7),
                    borderRadius: BorderRadius.circular(150),
                  )),
            ),
            Positioned(
              top: -80,
              right: -60,
              child: Container(
                  height: 181,
                  width: 181,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(150),
                  )),
            ),
            Positioned(
              top: 50, // Adjust the position as needed
              left: 20, // Adjust the position as needed
              child: GestureDetector(
                onTap: () {
                  Get.toNamed("/index");
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 25,
              right: 25,
              bottom: 60,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 37),
                    ExpansionTile(
                        title: Text("FAQ QUESTION ONE"),
                        children: [
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(30),
                            width: double.infinity,
                            child: Text("dasdsadafacbahsbdadbkasbasbchasda"),
                          )
                        ],
                    ),
                    SizedBox(height: 37),
                    ExpansionTile(
                        title: Text("FAQ QUESTION ONE"),
                        children: [
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(10),
                            width: double.infinity,
                            child: Text("dasdsadafacbahsbdadbkasbasbchasda"),
                          )
                        ],
                    ),
                    SizedBox(height: 37),
                    ExpansionTile(
                        title: Text("FAQ QUESTION ONE"),
                        children: [
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(10),
                            width: double.infinity,
                            child: Text("dasdsadafacbahsbdadbkasbasbchasda"),
                          )
                        ],
                    ),
                    SizedBox(height: 37),
                    ExpansionTile(
                        title: Text("FAQ QUESTION ONE"),
                        children: [
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(10),
                            width: double.infinity,
                            child: Text("dasdsadafacbahsbdadbkasbasbchasda"),
                          )
                        ],
                    ),
                    SizedBox(height: 37),
                    ExpansionTile(
                        title: Text("FAQ QUESTION ONE"),
                        children: [
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(10),
                            width: double.infinity,
                            child: Text("dasdsadafacbahsbdadbkasbasbchasda"),
                          )
                        ],
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
