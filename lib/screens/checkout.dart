import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:travel_apk_ui/screens/TravelSplash.dart';
import 'package:travel_apk_ui/screens/signinpage.dart';

import '../utilis/Drawhorizontaldottedline.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 242, 241, 241),
            appBar: AppBar(
              backgroundColor: Colors.cyan,
              leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back)),
              title: const Text("Checkout"),
              centerTitle: true,
              toolbarHeight: kTextTabBarHeight + 80,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50))),
            ),
            body: SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    width: width,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  "NYC",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("New York")
                              ],
                            ),
                            const Text("_______"),
                            const Padding(
                              padding: EdgeInsets.only(top: 13),
                              child: Icon(FontAwesomeIcons.plane),
                            ),
                            const Text("_______"),
                            Column(
                              children: const [
                                Text(
                                  "YYZ",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("Toronto")
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 10, bottom: 10, left: 15, right: 15),
                        child: MySeparator(
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: height / 20,
                                  width: width / 10,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.cyan.shade100,
                                    //borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: const Icon(
                                    FontAwesomeIcons.crown,
                                    color: Colors.cyan,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                            
                              children: const [
                                Text("Airline"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Air King",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(
                              width: width / 5,
                            ),
                            Column(
                              children: const [
                                Text("Passengers"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "James Christin",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Date"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "24 Mar 2023",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: const [
                                    Text("Gate"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "24 A",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 30, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text("Flight No."),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "NNS24",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ])),
                      Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Boarding Time"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "04:00pm",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: const [
                                    Text("Seat"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "5 A",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 30, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text("Class"),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Economy",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ])),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 10, bottom: 10, left: 15, right: 15),
                        child: MySeparator(
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          height: 65,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/download (1).png"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      const Text("0196A2P7896742")
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    width: width,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "1 Passenger",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "\$525",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Insurance",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "-",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    backgroundColor: Colors.deepOrangeAccent),
                                onPressed: () {
                                  Get.to(() => const Signin());
                                },
                                child: const Text(
                                  "Confirm",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ))),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ]),
                  ),
                )
              ]),
            )));
  }
}
