import 'package:ecommerceapp/utils/constants/image_string.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/text_string.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';



class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:[ Padding(
          padding:const EdgeInsets.all(TAppsizes.defaultspacing),
          child: PageView(
            children:const [
            OnBoarding(image:TImageString.onboardingimage1,title:TApptexts.onboardingtext1,subtitle: TApptexts.onboardingsubtext1),
            OnBoarding(image:TImageString.onboardingimage2,title:TApptexts.onboardingtext2,subtitle: TApptexts.onboardingsubtext2),
            OnBoarding(image:TImageString.onboardingimage3,title:TApptexts.onboardingtext3,subtitle: TApptexts.onboardingsubtext3),
            ],
          ),
        ),
        ],
      ),
    );
  }
}

class OnBoarding extends StatelessWidget {
  const OnBoarding({
    super.key,required this.image,required this.title,required this.subtitle
  }
  );
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          width: THelperfunctions.screenWidth()*0.8,
          height:THelperfunctions.screenHeight()*0.6,
          image:AssetImage(image),
        ),
        Text(title,
        style:Theme.of(context).textTheme.headlineMedium
        ),
        const SizedBox(height:TAppsizes.spacebtwitems),
        Text(subtitle,
        style:Theme.of(context).textTheme.bodyMedium)
      ],
      );
  }
}