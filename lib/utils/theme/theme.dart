import 'package:ecommerceapp/utils/theme/appbar_theme.dart';
import 'package:ecommerceapp/utils/theme/bottomsheet_theme.dart';
import 'package:ecommerceapp/utils/theme/checkbox_theme.dart';
import 'package:ecommerceapp/utils/theme/chip_theme.dart';
import 'package:ecommerceapp/utils/theme/elevatedbutton_theme.dart';
import 'package:ecommerceapp/utils/theme/outlinedbutton_theme.dart';
import 'package:ecommerceapp/utils/theme/text_theme.dart';
import 'package:ecommerceapp/utils/theme/textformfield_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme
{
  TAppTheme._();
  static ThemeData lightTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.ligthTextTheme,
    elevatedButtonTheme:TElevatedbuttonTheme.lightButtonTheme,
    bottomSheetTheme: TBottomsheetTheme.lightBottomTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    appBarTheme: TAppbarTheme.lightAppbarTheme,
    inputDecorationTheme: TTextformfieldTheme.lighttextformTheme,
    chipTheme: TChipThemedata.lightChipTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightoutlinedbuttonTheme,
    
  );
  static ThemeData darkTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme:TElevatedbuttonTheme.darkButtonTheme,
    bottomSheetTheme: TBottomsheetTheme.darkBottomTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    appBarTheme: TAppbarTheme.darkAppbarTheme,
    inputDecorationTheme: TTextformfieldTheme.darktextformTheme,
    chipTheme: TChipThemedata.darkChipTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkoutlinedbuttonTheme,
  );
}