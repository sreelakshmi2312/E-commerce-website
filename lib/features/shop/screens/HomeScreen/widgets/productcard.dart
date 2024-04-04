import 'package:ecommerceapp/common/styles/shadows.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/colors.dart';


class TProductCard extends StatelessWidget {
  const TProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:180,
      padding:const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalproductshadow],
        borderRadius: BorderRadius.circular(TAppsizes.productimageradius),
        color:THelperfunctions.isDarkMode(context)?TAppcolors.greydarker:TAppcolors.textwhite
      ),
    );
  }
}