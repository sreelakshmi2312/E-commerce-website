import 'package:ecommerceapp/common/login%20widgets/divider.dart';
import 'package:ecommerceapp/common/login%20widgets/socialbuttons.dart';
import 'package:ecommerceapp/features/authentication/screens/login/widgets/loginform.dart';
import 'package:ecommerceapp/features/authentication/screens/login/widgets/loginheader.dart';
import 'package:ecommerceapp/features/authentication/screens/signup/signupscreen.dart';
import 'package:ecommerceapp/features/shop/screens/mainscreen.dart';
import 'package:ecommerceapp/utils/constants/text_string.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/sizes.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkmode = THelperfunctions.isDarkMode(context);
    return Material(
      child:Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:TAppsizes.defaultspacing , top:TAppsizes.defaultspacing , right:TAppsizes.defaultspacing),
          child: Column(
            children: [
              //header

              LoginHeader(darkmode:darkmode),

              // Form
              const LoginForm(),

              //Social Buttons

              SocialButton(text1:TApptexts.signIn,text2:TApptexts.createAccount,pressed2: () => Get.to(const SignUpScreen()), pressed1: ()=> Get.to(const MainScreen()),),
              
              //Login footer

              Dividerline(darkmode:darkmode,textline: TApptexts.orSignInWith,),
               
               ],
              )
          ),
        ),
      ),
      );
  }
}
