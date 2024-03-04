import 'package:flutter/material.dart';

class TAppbarTheme{
  TAppbarTheme._();
  static const AppBarTheme lightAppbarTheme=AppBarTheme(
    elevation: 0,
    scrolledUnderElevation:0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    centerTitle: false,
    titleTextStyle: TextStyle(color:Colors.black,fontSize: 18 ,fontWeight: FontWeight.w500),
    actionsIconTheme: IconThemeData(color:Colors.black,size: 24),
    iconTheme: IconThemeData(color:Colors.black,size: 24),
  );
  static const AppBarTheme darkAppbarTheme=AppBarTheme(
    elevation: 0,
    scrolledUnderElevation:0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    centerTitle: false,
    titleTextStyle: TextStyle(color:Colors.black,fontSize: 18 ,fontWeight: FontWeight.w500),
    actionsIconTheme: IconThemeData(color:Colors.black,size: 24),
    iconTheme: IconThemeData(color:Colors.black,size: 24),
  );

}