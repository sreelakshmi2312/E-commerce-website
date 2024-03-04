import 'package:flutter/material.dart';

class TElevatedbuttonTheme{
  TElevatedbuttonTheme._();
  static ElevatedButtonThemeData lightButtonTheme=ElevatedButtonThemeData(
    style:ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side:const BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical:18),
      shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(8)),
      textStyle: const TextStyle(fontSize: 16 ,color: Colors.white,fontWeight: FontWeight.w600)
    )
  );
  static ElevatedButtonThemeData darkButtonTheme=ElevatedButtonThemeData(
    style:ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      disabledBackgroundColor: Colors.grey,
      side:const BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical:18),
      shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(8)),
      textStyle: const TextStyle(fontSize: 16 ,color: Colors.white,fontWeight: FontWeight.w600)
    )
  );



}