import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:travel_apk_ui/screens/selectroom.dart';

import '../utilis/Drawhorizontaldottedline.dart';

class Hotelscreen extends StatefulWidget {
  const Hotelscreen({super.key});

  @override
  State<Hotelscreen> createState() => _HotelscreenState();
}

class _HotelscreenState extends State<Hotelscreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final weight = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            height: height * 0.3,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(50)),
                color: Colors.cyan),
          ),
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: AppBar(
              toolbarHeight: kTextTabBarHeight + 80,
              elevation: 0,
              backgroundColor: Colors.cyan,
              leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back)),
              centerTitle: true,
              title: const Text(
                "Hotels",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, height / 8, 20, 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    elevation: 2,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            height: height / 6,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/h3-slider1.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Royal palm Heritage",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Row(
                            children: const [
                              Icon(Icons.location_on_outlined),
                              Text("New York,USA -364m from destination")
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Row(
                            children: const [
                              Icon(Icons.star, color: Colors.amber),
                              Text("4.8 (3241 reviews)")
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Padding(
                          padding: EdgeInsets.only(left: 17, right: 20),
                          child: MySeparator(color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: const [
                                  Text(
                                    "\$143",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("/ night")
                                ],
                              ),
                              SizedBox(
                                height: height / 17,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.deepOrangeAccent,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          )),
                                      onPressed: () {
                                        Get.to(() => const SelectRoom());
                                      },
                                      child: const Text("Book a room")),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 30)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    elevation: 2,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            height: height / 6,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/nature-heritage-resort.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Royal palm Heritage",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Row(
                            children: const [
                              Icon(Icons.location_on_outlined),
                              Text("New York,USA -364m from destination")
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Row(
                            children: const [
                              Icon(Icons.star, color: Colors.amber),
                              Text("4.8 (3241 reviews)")
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Padding(
                          padding: EdgeInsets.only(left: 17, right: 20),
                          child: MySeparator(color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: const [
                                  Text(
                                    "\$143",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("/ night")
                                ],
                              ),
                              SizedBox(
                                height: height / 17,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.deepOrangeAccent,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          )),
                                      onPressed: () {
                                        Get.to(() => const SelectRoom());
                                      },
                                      child: const Text("Book a room")),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 30)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    elevation: 2,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            height: height / 6,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage("assets/images/5.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Royal palm Heritage",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Row(
                            children: const [
                              Icon(Icons.location_on_outlined),
                              Text("New York,USA -364m from destination")
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Row(
                            children: const [
                              Icon(Icons.star, color: Colors.amber),
                              Text("4.8 (3241 reviews)")
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Padding(
                          padding: EdgeInsets.only(left: 17, right: 20),
                          child: MySeparator(color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: const [
                                  Text(
                                    "\$143",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("/ night")
                                ],
                              ),
                              SizedBox(
                                height: height / 17,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.deepOrangeAccent,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          )),
                                      onPressed: () {
                                        Get.to(() => const SelectRoom());
                                      },
                                      child: const Text("Book a room")),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 30)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
