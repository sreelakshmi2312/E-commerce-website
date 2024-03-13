import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';

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