import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:travel_apk_ui/screens/room_HomePage.dart';

import '../utilis/Drawhorizontaldottedline.dart';

class SelectRoom extends StatelessWidget {
  const SelectRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Rooms(),
    ));
  }
}

class Rooms extends StatelessWidget {
  final List iconslist = <IconData>[
    Icons.wifi,
    Boxicons.bxs_dollar_circle,
    CommunityMaterialIcons.silverware_fork_knife,
    FontAwesomeIcons.banSmoking
  ];
  final iconname = [
    "Free\nWifi",
    "Non-\nRefendable",
    "Free\nBreakfast",
    "Non-\nSmoking",
  ];

  Rooms({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
          ),
          height: height * 0.3,
        ),
        Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              toolbarHeight: kTextTabBarHeight + 80,
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: const Text("Select Room"),
              leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back)),
            )),
        Padding(
          padding: EdgeInsets.fromLTRB(20, height / 8, 20, 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  elevation: 2,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Royal Palm Heritage",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Room size : 32 m2",
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Non-refundable",
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/hotel5.jpeg"),
                                    fit: BoxFit.cover),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: height / 8,
                            width: width / 1.2,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return ServiceWidget(
                                    iconData: iconslist[index],
                                    text: iconname[index]);
                              },
                              itemCount: iconslist.length,
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                        child: MySeparator(
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "\$143",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("/night")
                              ],
                            ),
                            SizedBox(
                              height: 50,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.deepOrangeAccent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      )),
                                  onPressed: () {
                                    Get.to(() => const Room());
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("Book a room"),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 20,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Royal Palm Heritage",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Room size : 32 m2",
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Non-refundable",
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/hotel6.jpeg"),
                                    fit: BoxFit.cover),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: height / 8,
                            width: width / 1.2,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return ServiceWidget(
                                    iconData: iconslist[index],
                                    text: iconname[index]);
                              },
                              itemCount: iconslist.length,
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                        child: MySeparator(
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "\$143",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("/night")
                              ],
                            ),
                            SizedBox(
                              height: 50,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.deepOrangeAccent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      )),
                                  onPressed: () {
                                    Get.to(() => const Room());
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("Book a room"),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 20,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Royal Palm Heritage",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Room size : 32 m2",
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Non-refundable",
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/hotel4.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: height / 8,
                            width: width / 1.2,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return ServiceWidget(
                                    iconData: iconslist[index],
                                    text: iconname[index]);
                              },
                              itemCount: iconslist.length,
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                        child: MySeparator(
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "\$143",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("/night")
                              ],
                            ),
                            SizedBox(
                              height: 50,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.deepOrangeAccent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      )),
                                  onPressed: () {
                                    Get.to(() => const Room());
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("Book a room"),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

///widgets
class ServiceWidget extends StatelessWidget {
  final IconData iconData;
  final String text;
  const ServiceWidget({super.key, required this.iconData, required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 10, 0),
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // height: 50,
              //width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue.shade200,
              ),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Icon(
                  iconData,
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                text,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
