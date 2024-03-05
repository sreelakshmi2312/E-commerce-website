import 'package:flutter/material.dart';


class TAppcolors{
  
  TAppcolors._();
  
  
  //App Basic Colors
 
  static const Color primary=Color(0xFF4b68ff);
  static const Color secondary=Color(0xFFFFE24B);
  static const Color accent=Color(0xFFb0c7ff);

  //Text Colors

  static const Color textprimary=Color(0xFF333333);
  static const Color textsecondary=Color(0xFF6c757D);
  static const Color textwhite=Colors.white;

  //Background Colors

  static const Color backgroundlight=Color(0xFFF6F6F6);
  static const Color backgrounddark=Color(0xFF272727);
  static const Color primarybackground=Color(0xFFF3F5FF);

  //Background container colors

  static const Color containerlight=Color(0xFFF6F6F6);
  static Color containerdark=TAppcolors.textwhite.withOpacity(0.1);
  
  //Button colors
  
  static const Color buttonprimary=Color(0xFF4b68ff);
  static const Color buttonsecondary=Color(0xFF6c757D);
  static const Color buttondisabeled=Color(0xFF6C757D);

  //Border colors

  static const Color borderprimary=Color(0xFFD9D9D9);
  static const Color bordersecondary=Color(0xFFE6E6E6);

  //Error and validation colors

  static const Color error=Color(0xFFD32F2F);
  static const Color success=Color(0xFF388E3C);
  static const Color warning=Color(0xFFF57C00);
  static const Color info=Color(0xFF1976D2);
  
  //neutral colors

  static const Color black=Color(0xFF232323);
  static const Color greydarker=Color(0xFF4F4F4F);
  static const Color darkgrey=Color(0xFF939393);
  static const Color grey=Color(0xFFE0E0E0);

}