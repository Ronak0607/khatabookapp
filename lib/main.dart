import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khatabookapp/view/CustomerDetails.dart';
import 'package:khatabookapp/view/HomeScreen.dart';
import 'package:khatabookapp/view/ProductPage.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => homeScreen(),
      "cd": (context) => customerDetails(),
      "pp": (context) => productPase(),
    },
  ));
}
