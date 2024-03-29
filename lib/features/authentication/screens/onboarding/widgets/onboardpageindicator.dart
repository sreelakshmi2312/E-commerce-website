import 'package:ecommerceapp/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ecommerceapp/utils/devices/device_utility.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../../../utils/constants/colors.dart'
;
class OnBoardingPageIndicator extends StatelessWidget {
  const OnBoardingPageIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=THelperfunctions.isDarkMode(context);
    return Positioned(
      bottom:TDeviceutils.getBottomNavigationBarHeight(),
      left:TAppsizes.defaultspacing,
      child: SmoothPageIndicator(
        onDotClicked: (value)=>OnBoardingController.instance.moveToSelectedPage(value),
        controller:OnBoardingController.instance.pagecontroller, 
        count: 3 ,
       effect: ExpandingDotsEffect(
        activeDotColor: dark ?TAppcolors.backgroundlight: TAppcolors.backgrounddark , dotHeight: 6),));
  }
}

