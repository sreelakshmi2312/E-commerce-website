import 'package:flutter/material.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({
    super.key,required this.title,required this.subtitle,required this.image
  }
  );
  final String title;
  final String image;
  final String subtitle;
  

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              width: THelperfunctions.screenWidth()*0.8,
              height:THelperfunctions.screenHeight()*0.6,
              image:AssetImage(image),
            ),
            Text(title,
            style:Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
            ),
            const SizedBox(height:TAppsizes.spacebtwitems),
            Text(subtitle,
            style:Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,),
          ],
      ),
    );
  }
}