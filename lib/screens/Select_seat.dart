import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:travel_apk_ui/screens/Bookyourflight.dart';

class SelectSeat extends StatelessWidget {
  const SelectSeat({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Stack(children: <Widget>[
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
              title: const Text("Select Seat"),
              leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back)),
            )),
        Padding(
          padding: EdgeInsets.fromLTRB(10, height / 7, 10, 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, height / 5, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 20, 10, 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.cyan.shade100,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.all(4),
                                              child: Icon(
                                                MdiIcons.googleClassroom,
                                                size: 18,
                                                color: Colors.cyan,
                                              ),
                                            )),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Seat",
                                              style: TextStyle(
                                                  color: Colors.black54),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              "5A",
                                              style: TextStyle(
                                                  color: Colors.cyan,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Economy Class",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                        color: Colors.cyan.shade100,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 10, 20, 10),
                                        child: Text(
                                          "\$215",
                                          style: TextStyle(color: Colors.cyan),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                "YYZ",
                                style: TextStyle(
                                    color: Colors.cyan,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Icon(
                                LineAwesomeIcons.plane,
                                color: Colors.cyan,
                                size: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "NYC",
                                style: TextStyle(
                                    color: Colors.cyan,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Card(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.elliptical(150, 500),
                                topRight: Radius.elliptical(150, 500))),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, height / 12, 10, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: height * 0.2,
                                width: width / 2.4,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/plane.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              const Text(
                                "Business Class",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              BusinessClass(),
                              const Text(
                                "Economy Class",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const EconomyClass()
                            ],
                          ),
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => const BookYourFlight());
                        },
                        child: const Text("Confirm"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrangeAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      )),
                )
              ],
            ),
          ),
        )
      ]),
    ));
  }
}

///Business class grid
class BusinessClass extends StatelessWidget {
  const BusinessClass({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final listbusinessclass1 = ["A", "B", "A", "", "", "B"];
    final listbusinessclass2 = ["C", "D", "C", "", "", "D"];
    final listcolor1 = <Color>[
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
      Colors.cyan,
      Colors.cyan,
      Colors.transparent
    ];
    return Container(
      child: Column(
        children: [
          Container(
            // width: width * 0.2,
            //height: height / 26,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height / 6,
                      width: width * 0.2,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: listbusinessclass1.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5),
                        itemBuilder: (context, index) {
                          return seat(
                            seatheight: height / 6,
                            seatwidth: width / 18,
                            seatnotext: listbusinessclass1[index],
                            seatcolor: listcolor1[index],
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: Container(
                    height: height / 6,
                    width: width * 0.1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "1",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 13, 10, 10),
                          child: Text(
                            "2",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 12, 10, 10),
                          child: Text(
                            "3",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height / 6,
                      width: width * 0.2,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: listbusinessclass2.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5),
                        itemBuilder: (context, index) {
                          return seat(
                            seatheight: height / 6,
                            seatwidth: width / 18,
                            seatnotext: listbusinessclass2[index],
                            seatcolor: listcolor1[index],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

///Economyclass grid
class EconomyClass extends StatelessWidget {
  const EconomyClass({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final listeconomyclass1 = [
      "A",
      "B",
      "",
      "",
      "",
      "",
      "A",
      "B",
      "C",
      "",
      "",
      "",
      "",
      "",
      "",
    ];
    final listeconomyclass2 = [
      "",
      "E",
      "F",
      "D",
      "E",
      "F",
      "",
      "",
      "",
      "",
      "E",
      "F",
      "",
      "",
      "F"
    ];
    final listcolor1 = <Color>[
      Colors.transparent,
      Colors.transparent,
      Colors.cyan,
      Colors.cyan,
      Colors.cyan,
      Colors.cyan,
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
      Colors.cyan,
      Colors.cyan,
      Colors.cyan,
      Colors.cyan,
      Colors.cyan,
      Colors.cyan,
    ];
    final listcolor2 = <Color>[
      Colors.cyan,
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
      Colors.cyan,
      Colors.cyan,
      Colors.cyan,
      Colors.cyan,
      Colors.transparent,
      Colors.transparent,
      Colors.cyan,
      Colors.cyan,
      Colors.transparent,
    ];
    return Container(
      child: Column(
        children: [
          Container(
            // width: width * 0.2,
            //height: height / 26,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height / 6,
                      width: width * 0.2,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: listeconomyclass1.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5),
                        itemBuilder: (context, index) {
                          return seat(
                            seatheight: height / 6,
                            seatwidth: width / 18,
                            seatnotext: listeconomyclass1[index],
                            seatcolor: listcolor1[index],
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: SizedBox(
                    height: height / 6,
                    width: width * 0.1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                            8,
                            0,
                            0,
                            0,
                          ),
                          child: Text(
                            "1",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: Text(
                            "2",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: Text(
                            "3",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: Text(
                            "4",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: Text(
                            "5",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height / 6,
                      width: width * 0.2,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: listeconomyclass2.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5),
                        itemBuilder: (context, index) {
                          return seat(
                            seatheight: height / 6,
                            seatwidth: width / 18,
                            seatnotext: listeconomyclass2[index],
                            seatcolor: listcolor2[index],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//seat
class seat extends StatelessWidget {
  final double seatheight;
  final double seatwidth;
  final String seatnotext;
  Color? seatcolor = Colors.cyan;
  seat(
      {required this.seatheight,
      required this.seatwidth,
      required this.seatnotext,
      this.seatcolor});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: seatheight,
      width: seatwidth,
      decoration: BoxDecoration(
        color: seatcolor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.cyan),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          seatnotext,
          style: const TextStyle(
              fontWeight: FontWeight.w500, color: Colors.black, fontSize: 12),
        ),
      ),
    );
  }
}
