import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:travel_apk_ui/screens/homepage.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.cyan,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50))),
              elevation: 0,
              toolbarHeight: 200,
              title: Column(
                children: const [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Hi, Welcome back!",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
                child: Column(children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        border: InputBorder.none,
                        hintText: "Email",
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 96, 92, 92))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.black,
                        ),
                        hintText: "Password",
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 96, 92, 92))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(children: const [
                        Icon(
                          Icons.check_box,
                          color: Colors.orange,
                        ),
                        SizedBox(width: 5),
                        Text("Remember me"),
                      ]),
                    ),
                    const Text("Forgot password?")
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Colors.deepOrangeAccent),
                        onPressed: () {
                          Get.to(() => HomePage());
                        },
                        child: const Text("Sign in"))),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                "You can connect with",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    image: AssetImage(
                        "assets/images/1298745_google_brand_branding_logo_network_icon.png"),
                    width: 25,
                    height: 25,
                  ),
                  SizedBox(width: 20),
                  Image(
                    image: AssetImage("assets/images/104490_apple_icon.png"),
                    width: 25,
                    height: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image(
                    image: AssetImage(
                        "assets/images/5296499_fb_facebook_facebook logo_icon.png"),
                    width: 25,
                    height: 25,
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text("Don't have an account?",
                              style: TextStyle(color: Colors.black)),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Sign up here",
                            style: TextStyle(color: Colors.deepOrangeAccent),
                          ),
                        ],
                      ))
                ],
              ),
            ]))));
  }
}
