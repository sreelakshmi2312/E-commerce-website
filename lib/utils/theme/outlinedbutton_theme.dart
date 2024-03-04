import 'package:flutter/material.dart';


class TOutlinedButtonTheme{
  TOutlinedButtonTheme._();

  static  OutlinedButtonThemeData lightoutlinedbuttonTheme=OutlinedButtonThemeData(
    style:OutlinedButton.styleFrom(
       elevation: 0,
       side: const BorderSide(color:Colors.blue),
       foregroundColor: Colors.black,
       textStyle: const TextStyle(color:Colors.black,fontSize:16,fontWeight: FontWeight.w500),
       shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
       padding: const EdgeInsets.symmetric(horizontal: 12 , vertical:12)
    )
  );
  static OutlinedButtonThemeData darkoutlinedbuttonTheme=OutlinedButtonThemeData(
    style:OutlinedButton.styleFrom(
       elevation: 0,
       side: const BorderSide(color:Colors.blueAccent),
       foregroundColor: Colors.white,
       textStyle: const TextStyle(color:Colors.white,fontSize:16,fontWeight: FontWeight.w500),
       shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
       padding: const EdgeInsets.symmetric(horizontal: 12 , vertical:12)
    )
  );

}