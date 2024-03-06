import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class TDeviceutils{
  static void hideKeyboard(BuildContext context){
    FocusScope.of(context).requestFocus(FocusNode()); //creating and requesting focus immediately for a focusnode , thus dismissing keyboard
  }

  static void setStatusBarColor(Color color) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: color
      )
    );
  }
  
  static bool isLandscapeOrientation(BuildContext context) {
    final viewInsets = MediaQuery.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  


}