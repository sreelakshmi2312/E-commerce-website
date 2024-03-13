import '../../../../../utils/constants/colors.dart';
import 'circularcontainer.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'clipper.dart';


class TCurvedContainer extends StatelessWidget {
  const TCurvedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClippedContainer(
    child:Container(
    width:double.infinity,
    height:THelperfunctions.screenHeight()*0.4,
    color: TAppcolors.primary,
    padding: const EdgeInsets.all(0),
    child:const Stack(children: [
    Positioned(top:-150,right:-250,child:TCircularContainer()),
    Positioned(top:100,right:-300,child:TCircularContainer()),
            ],)
          ),);
  }
}