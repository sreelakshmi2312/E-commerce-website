import 'package:ecommerceapp/common/styles/spacing_styles.dart';
import 'package:ecommerceapp/utils/constants/image_string.dart';
import 'package:ecommerceapp/utils/constants/text_string.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import '../../../../utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperfunctions.isDarkMode(context);
    return SingleChildScrollView(
      child: Padding(
        padding:TAppstyles.paddingstyle,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //header 
         children: [
          Image(
            height: 150,
            image: AssetImage(dark?TImageString.darkapplogo:TImageString.lightapplogo,)),
          Text(TApptexts.hometitle,
          style:Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height:TAppsizes.sm),
          Text(TApptexts.homesubtitle,
          style: Theme.of(context).textTheme.bodyMedium),

          //login form
          
         ],
        ),
      ),
    );
  }
}