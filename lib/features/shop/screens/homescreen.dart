import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Scaffold(
         body:SingleChildScrollView(
          child:Column(
             children:[
              Container(
                width:double.infinity,
                height:THelperfunctions.screenHeight()*0.4,
                color: TAppcolors.primary,
                padding: const EdgeInsets.all(0),
                child:const Stack(children: [
                      Positioned(top:-150,right:-250,child:TCircularContainer()),
                      Positioned(top:100,right:-300,child:TCircularContainer()),
                ],)
              )
             ]
          )
         )
      )
    );
  }
}

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({super.key, this.width, this.height , this.radius , this.bgcolor});
  final double? width;
  final double? height;
  final double? radius;
  final Color? bgcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
                        width:400,
                        height:400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(400),
                          color:TAppcolors.textwhite.withOpacity(0.1),

                        ),

                      );
  }
}