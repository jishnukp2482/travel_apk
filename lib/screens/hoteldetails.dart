import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_apk_ui/screens/hotelscreen.dart';

import '../utilis/Drawhorizontaldottedline.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({super.key});

  @override
  Widget build(BuildContext context) {
    List hotelimgs = [
      "assets/images/hotel1.jpg",
      "assets/images/hotel2.jpg",
      "assets/images/hotel3.jpg",
      "assets/images/hotel4.jpg",
    ];
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Hotel Details",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/hotel4.jpg",
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
              height: height / 2.5,
              width: width,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: height / 10,
                      width: width / 1.2,
                      //  margin: EdgeInsets.all(10),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: hotelimgs.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: height / 13,
                              width: width / 6,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(hotelimgs[index]),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      width: 4, color: Colors.white60)),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Grand Luxury's ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      child: Row(
                        children: const [
                          Text(
                            "\$143",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "/night",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                      size: 16,
                    ),
                    Text("New York,USA"),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const MySeparator(
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "4.8(3242 reviews)",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "See All",
                            style: TextStyle(
                              color: Colors.orangeAccent,
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const MySeparator(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Information",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    "The intuitive and intelligent WH bring you new\n100XM4 bring you new The intutive and intelligent\nWH bring you new "),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const Hotelscreen());
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Colors.deepOrangeAccent),
                      child: const Text(
                        "Select Room",
                        style: TextStyle(fontSize: 16),
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
