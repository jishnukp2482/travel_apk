import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:travel_apk_ui/screens/add_cart_main.dart';

import '../controller/Getxcontroller.dart';

class Passenger extends StatelessWidget {
  Passenger({super.key});
  final cntrl = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    List icons = <IconData>[
      FontAwesomeIcons.userAstronaut,
      FontAwesomeIcons.child,
      FontAwesomeIcons.baby
    ];
    List title = ["Adult", "Child", "Infant"];
    List subtitle = ["Age 12+", "Age 2-11", "Age 0-2"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Add passenger"),
        toolbarHeight: kTextTabBarHeight + 80,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height / 2,
              width: width,
              child: ListView.builder(
                itemCount: title.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      color: Colors.cyan.shade200,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        icons[index],
                                        color: Colors.cyan,
                                      ),
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      title[index],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      subtitle[index],
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    if (index == 0) {
                                      cntrl.AdultCounterDecrement();
                                    } else if (index == 1) {
                                      cntrl.ChildCounterDecrement();
                                    } else {
                                      cntrl.InfantDecrement();
                                    }
                                  },
                                  child: Icon(Icons.remove, color: Colors.cyan),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(10),
                                    backgroundColor: Colors.cyan.shade200,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Obx(() {
                                  if (index == 0) {
                                    return Text(
                                      cntrl.Adultcounter.toString(),
                                    );
                                  } else if (index == 1) {
                                    return Text(
                                      cntrl.Childcounter.toString(),
                                    );
                                  } else {
                                    return Text(
                                      cntrl.Infantcounter.toString(),
                                    );
                                  }
                                  // return Text("no");
                                }),
                                SizedBox(
                                  width: 5,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    if (index == 0) {
                                      cntrl.AdultCounterIncrement();
                                    } else if (index == 1) {
                                      cntrl.ChildCounterIncrement();
                                    } else {
                                      cntrl.InfantIncrement();
                                    }
                                  },
                                  child: Icon(Icons.add, color: Colors.cyan),
                                  style: ElevatedButton.styleFrom(
                                    // styling the button
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(10),
                                    backgroundColor:
                                        Colors.cyan.shade200, // Button color
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.deepOrangeAccent),
                    onPressed: () {
                      Get.to(() => const Cart());
                    },
                    child: const Text(
                      "Done",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
