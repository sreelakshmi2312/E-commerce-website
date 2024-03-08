import 'package:ecommerceapp/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ecommerceapp/utils/devices/device_utility.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';

class OnBoardingArrow extends StatelessWidget {
  const OnBoardingArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=THelperfunctions.isDarkMode(context);
    return Positioned(
      bottom:TDeviceutils.getBottomNavigationBarHeight(),
      right:TAppsizes.defaultspacing,
      child:ElevatedButton(
      onPressed:(){
        OnBoardingController.instance.moveToNextPage();
      },
      style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor:dark?TAppcolors.primary:TAppcolors.black),
      child:const Icon(Iconsax.arrow_right_3))
      );
  }
}