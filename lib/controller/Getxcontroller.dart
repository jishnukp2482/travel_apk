import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var Adultcounter = 0.obs;
  var Childcounter = 0.obs;
  var Infantcounter = 0.obs;
  var likecount1 = 24.obs;
  var unlikecount1 = 3.obs;
  var likecount2 = 34.obs;
  var unlikecount2 = 15.obs;
  var liked = false.obs;
  var likeincrement1 = false.obs;
  var likedecrement1 = false.obs;
  var likeincrement2 = false.obs;
  var likedecrement2 = false.obs;
  Color btncolor = Colors.grey;
  Color btncolor2 = Colors.grey;
  AdultCounterIncrement() {
    Adultcounter.value = Adultcounter.value + 1;
  }

  AdultCounterDecrement() {
    Adultcounter.value = Adultcounter.value - 1;
  }

  ChildCounterIncrement() {
    Childcounter.value = Childcounter.value + 1;
  }

  ChildCounterDecrement() {
    Childcounter.value = Childcounter.value - 1;
  }

  InfantIncrement() {
    Infantcounter.value = Infantcounter.value + 1;
  }

  InfantDecrement() {
    Infantcounter.value = Infantcounter.value - 1;
  }

  James1like() {
    likecount1.value = likecount1.value + 1;
    likeincrement1.value = true;
    btncolor = Colors.black;
  }

  james1unlike() {
    unlikecount1.value = unlikecount1.value - 1;
    likedecrement1.value = true;
    btncolor = Colors.black;
  }

  james2like() {
    likecount2.value = likecount2.value + 1;
    likeincrement2.value = true;
    btncolor2 = Colors.black;
  }

  james2unlike() {
    unlikecount2.value = unlikecount2.value - 1;
    likedecrement2.value = true;

    btncolor2 = Colors.black;
  }
}
