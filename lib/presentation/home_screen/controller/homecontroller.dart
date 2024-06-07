import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../innerpage/catss.dart';
import '../models/homemodels.dart';

class homecontroller extends GetxController {
  List<Cat> cats = [
    Cat(
        image: "assets/catss.jpg",
        name: "Persian",
        price: "\u20B9 5000"),
    Cat(
        image: "assets/cat1.jpg",
        name: "Maine Coon",
        price: "\u20B9 6000"),
    Cat(
        image: "assets/cats2.jpg",
        name: "British Shorthair",
        price: "\u20B9 9000"),
    Cat(
        image: "assets/cats3.jpg",
        name: "Ragdoll Cats",
        price: "\u20B9 3000"),
    Cat(
        image: "assets/cats4.jpg",
        name: "Exotic Shorthair",
        price: "\u20B9 2000"),
    Cat(
        image: "assets/cats5.jpg",
        name: "Maine Coon",
        price: "\u20B9 1000"),
  ];

}