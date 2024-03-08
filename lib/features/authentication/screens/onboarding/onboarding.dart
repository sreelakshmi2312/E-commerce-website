
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/text_string.dart';
import 'package:get/get.dart';
import '../onboarding/widgets/onboardingpages.dart';
import '../onboarding/widgets/onboardingskip.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/image_string.dart';
import '../onboarding/widgets/onboardpageindicator.dart';
import '../onboarding/widgets/onboardingarrow.dart';
import '../../controllers.onboarding/onboarding_controller.dart';



class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});
  final controller=Get.put(OnBoardingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:[ Padding(
          padding:const EdgeInsets.all(TAppsizes.defaultspacing),
          child: PageView(
            controller: controller.pagecontroller,
            onPageChanged: (value)=>controller.updateSelectedPage(value),
            children:const [
            OnBoarding(image:TImageString.onboardingimage1,title:TApptexts.onboardingtext1,subtitle: TApptexts.onboardingsubtext1),
            OnBoarding(image:TImageString.onboardingimage2,title:TApptexts.onboardingtext2,subtitle: TApptexts.onboardingsubtext2),
            OnBoarding(image:TImageString.onboardingimage3,title:TApptexts.onboardingtext3,subtitle: TApptexts.onboardingsubtext3),
            ],
          ),
        ),
        const Onboardingskip(),
        //smooth page indicator
        const OnBoardingPageIndicator(),
        //circular button 
        const OnBoardingArrow(),
        ],

      ),
    );
  }
}




