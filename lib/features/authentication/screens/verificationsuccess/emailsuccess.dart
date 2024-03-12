import 'package:ecommerceapp/common/login%20widgets/singlebutton.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/image_string.dart';
import '../../../../utils/constants/text_string.dart';
import '../../../../utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:ecommerceapp/common/styles/spacing_styles.dart';

class EmailSuccess extends StatelessWidget {
  const EmailSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Scaffold(
        body: SingleChildScrollView(
          child:Padding(padding:TAppstyles.paddingstyle,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: const AssetImage(TImageString.emailsuccess), width:THelperfunctions.screenWidth()*0.6,),
              const SizedBox(height:TAppsizes.spacebtwitems),
              Text(TApptexts.yourAccountCreatedTitle,style:Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
              const SizedBox(height:TAppsizes.spacebtwitems),
              Text(TApptexts.yourAccountCreatedSubTitle,style:Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
              const SizedBox(height:TAppsizes.spacebtwsections),
              SingleButton(text1: TApptexts.continuetext, pressed1: (){})
              ],
          )
          )
          )
      ),
    );
  }
}