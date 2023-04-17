import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dart:math' as math;

import 'package:slider_button/slider_button.dart';

import 'package:travel_apk_ui/screens/signinpage.dart';

class TravelSplash extends StatelessWidget {
  const TravelSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/10476-removebg-preview.png"),
                        fit: BoxFit.cover)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 12,
                  width: 12,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                      border: Border.all(
                        width: 3,
                        color: Colors.blue,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      height: 14,
                      width: 14,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 12,
                  width: 12,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Let's Enjoy the",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Transform.rotate(
                        angle: -math.pi / 50,
                        child: Container(
                            color: Colors.orange.shade400,
                            child: const Padding(
                              padding: EdgeInsets.all(2),
                              child: Text(
                                "Beautiful",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "World!",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Discover new places and get new experiences.We will\nhelp to find the best experience for your journey.",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "swipe right to start",
                    style: TextStyle(color: Colors.black54, fontSize: 18),
                  ),
                  SizedBox(
                    width: 100,
                    child: SliderButton(
                      // width: 125,
                      shimmer: false,
                      action: () {
                        Get.off(() => const Signin());
                      },
                      backgroundColor: Colors.orange.shade400,
                      buttonSize: 60,
                      buttonColor: Colors.white,
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
