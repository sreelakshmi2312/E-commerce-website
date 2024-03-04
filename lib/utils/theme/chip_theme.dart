import 'package:flutter/material.dart';

class TChipThemedata{
  TChipThemedata._();
  static ChipThemeData lightChipTheme=ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    backgroundColor: Colors.blue,
    checkmarkColor: Colors.white,
    padding:const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
);
  static const ChipThemeData darkChipTheme=ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    backgroundColor: Colors.blue,
    checkmarkColor: Colors.white,
    padding:EdgeInsets.symmetric(horizontal: 12, vertical: 12),
  );
}
