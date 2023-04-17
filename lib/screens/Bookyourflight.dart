import 'package:flutter/material.dart';
import 'package:fluttericon/web_symbols_icons.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:travel_apk_ui/screens/passenger.dart';

class BookYourFlight extends StatefulWidget {
  const BookYourFlight({super.key});

  @override
  State<BookYourFlight> createState() => _BookYourFlightState();
}

class _BookYourFlightState extends State<BookYourFlight>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  @override
  void initState() {
    _tabcontroller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        toolbarHeight: kTextTabBarHeight + 80,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
        ),
        title: const Text("Book Your Flight"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: TabBar(
                controller: _tabcontroller,
                indicatorColor: Colors.transparent,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.deepOrangeAccent,
                tabs: [
                  Tab(
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "One Way",
                            style: TextStyle(color: Colors.deepOrangeAccent),
                          ),
                        )),
                  ),
                  Tab(
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Round Trip",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ),
                  Tab(
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Multi-City",
                            style: TextStyle(color: Colors.deepOrangeAccent),
                          ),
                        )),
                  ),
                ]),
          ),
          Expanded(
              child: TabBarView(controller: _tabcontroller, children: [
            Container(),
            const RoundTrip(),
            Container(),
          ]))
        ],
      ),
    ));
  }
}

class RoundTrip extends StatelessWidget {
  const RoundTrip({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final List icons = <IconData>[
      Icons.calendar_month,
      Icons.calendar_month,
      Icons.person,
      MdiIcons.googleClassroom
    ];
    final title = ["Depature", "Return", "Passengers", "Class"];
    final subttile = ["Select Date", "Select Date", "1 passenger", "Economy"];
    return SingleChildScrollView(
      child: Column(
        children: [
          const RoundTrip1(),
          Container(
            height: height / 2,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: subttile.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side:
                            const BorderSide(color: Colors.black, width: 0.1)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.cyan.shade100,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Icon(
                                      icons[index],
                                      color: Colors.cyan,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(title[index]),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  subttile[index],
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
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
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => Passenger());
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.deepOrangeAccent),
                child: const Text("Search"),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//first two items in round tip
class RoundTrip1 extends StatelessWidget {
  const RoundTrip1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(color: Colors.black, width: 0.1)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              LineAwesomeIcons.plane,
                              color: Colors.cyan,
                            ),
                            Icon(
                              Icons.more_vert,
                              color: Colors.cyan,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("From"),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "New York",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(color: Colors.black, width: 0.1)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.more_vert,
                              color: Colors.blue,
                            ),
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("To"),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Toronto",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          right: 40,
          top: 85,
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 0.2)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  WebSymbols.updown_circle,
                  color: Colors.black,
                ),
              )),
        ),
      ]),
    );
  }
}
