import 'package:ecommerceapp/common/login%20widgets/socialbuttons.dart';
import 'package:ecommerceapp/common/styles/spacing_styles.dart';
import 'package:ecommerceapp/features/authentication/screens/login/login_screen.dart';
import 'package:ecommerceapp/features/authentication/screens/verificationsuccess/emailsuccess.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/image_string.dart';
import '../../../../utils/constants/text_string.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/sizes.dart';


class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});
  
  @override
  Widget build(BuildContext context) {
      return Material(
      child:Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading:false,
          actions: [
          IconButton(onPressed:(){ Get.offAll(const LoginScreen());}, icon: const Icon(CupertinoIcons.clear))
        ],),
        body: SingleChildScrollView(
          child:Padding(padding:TAppstyles.paddingstyle,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: const AssetImage(TImageString.emailimage), width:THelperfunctions.screenWidth()*0.6,),
              const SizedBox(height:TAppsizes.spacebtwitems),
              Text(TApptexts.confirmEmail,style:Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
              const SizedBox(height:TAppsizes.spacebtwitems),
              Text('srilakshmi@gmail.com',style:Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
              const SizedBox(height:TAppsizes.spacebtwitems),
              Text(TApptexts.confirmEmailSubTitle,style:Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
              const SizedBox(height:TAppsizes.spacebtwsections),
              SocialButton(text1: TApptexts.continuetext, pressed1:()=> Get.to(const EmailSuccess()), text2: TApptexts.resendEmail, pressed2: (){})
              ],
          )
          )


        )
      ),
    );
  }
}