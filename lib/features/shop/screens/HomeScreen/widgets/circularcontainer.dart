import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({super.key, this.width=400, this.height=400 , this.radius=400, this.bgcolor});
  final double? width;
  final double? height;
  final double? radius;
  final Color? bgcolor;


  @override
  Widget build(BuildContext context) {
    return Container(
                        width:width,
                        height:height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(radius as double),
                          color:TAppcolors.textwhite.withOpacity(0.1),

                        ),

                      );
  }
}