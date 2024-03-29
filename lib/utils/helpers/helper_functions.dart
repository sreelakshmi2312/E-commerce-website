import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THelperfunctions{

 static Size screenSize(){
  return MediaQuery.of(Get.context!).size;
 }
 static double screenWidth(){
   return MediaQuery.of(Get.context!).size.width;
 }
 static double screenHeight(){
   return MediaQuery.of(Get.context!).size.height;
 }

 static bool isDarkMode(BuildContext context) {
  final Brightness brightness = Theme.of(context).brightness;
  return brightness == Brightness.dark;
}

}