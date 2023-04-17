import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_apk_ui/controller/Getxcontroller.dart';

import '../utilis/Drawhorizontaldottedline.dart';

class James extends StatelessWidget {
  James({Key? key}) : super(key: key);
  final cntrl = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 16,
                      width: MediaQuery.of(context).size.width / 8,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/images/james.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'James Christin',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '24 minutes ago',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orangeAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orangeAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orangeAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orangeAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.orangeAccent,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'The Intuitive and intelligent WH bring you new 1000XM4 bring you',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 0, 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/ocean.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 0, 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/ocean.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const MySeparator(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(
                () => Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          if (!cntrl.likeincrement1.value) {
                            cntrl.James1like();
                          }
                        },
                        icon: Icon(
                          Icons.thumb_up,
                          color: cntrl.btncolor,
                        )),
                    Text(
                      cntrl.likecount1.toString(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Obx(
                () => Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          if (!cntrl.likedecrement1.value) {
                            cntrl.james1unlike();
                          }
                        },
                        icon: Icon(
                          Icons.thumb_down,
                          color: cntrl.btncolor,
                        )),
                    Text(
                      cntrl.unlikecount1.toString(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_horiz_sharp))
            ],
          ),
        ],
      ),
    );
  }
}
