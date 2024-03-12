import 'package:ecommerceapp/common/login%20widgets/divider.dart';
import 'package:ecommerceapp/common/login%20widgets/singlebutton.dart';
import 'package:ecommerceapp/features/authentication/screens/signup/widgets/signupfields.dart';
import 'package:ecommerceapp/features/authentication/screens/signup/widgets/termscheckbox.dart';
import 'package:ecommerceapp/features/authentication/screens/verificationsuccess/emailverification.dart';
import 'package:ecommerceapp/utils/constants/text_string.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/common/styles/spacing_styles.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/sizes.dart';



class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperfunctions.isDarkMode(context);
    return  Material(
      child: Scaffold(
          appBar: AppBar(automaticallyImplyLeading: true,),
          body: SingleChildScrollView(
          child: Padding(
            padding: TAppstyles.paddingstyle,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  const SignupFields(),
                  const TermsofUse(),
                  const SizedBox(height:TAppsizes.spacebtwitems),
                  SingleButton(text1:TApptexts.createAccount,pressed1:()=>Get.to(const EmailVerification())),
                  const SizedBox(height:TAppsizes.spacebtwitems),
                  Dividerline(darkmode: dark, textline:TApptexts.orSignUpWith),
                  ],
            ),
          ),
        ),
      ),
    );
  }
}