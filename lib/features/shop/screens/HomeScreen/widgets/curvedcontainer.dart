import '../../../../../utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'circularcontainer.dart';
import 'clipper.dart';
import '../../../../../utils/helpers/helper_functions.dart';


class TCurvedContainer extends StatelessWidget {
  const TCurvedContainer({
    super.key,this.childwidget,
  });
  final Widget? childwidget;

  @override
  Widget build(BuildContext context) {
    return ClippedContainer(child:Container(
    width:double.infinity,
    height:THelperfunctions.screenHeight()*0.4,
    color: TAppcolors.primary,
    padding: const EdgeInsets.all(0),
    child:Stack(children: [
    const Positioned(top:-150,right:-250,child:TCircularContainer()),
    const Positioned(top:100,right:-300,child:TCircularContainer()),
    childwidget!,
            ],)
          ),);
  }
}


