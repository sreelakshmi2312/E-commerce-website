import 'package:ecommerceapp/common/login%20widgets/divider.dart';
import 'package:ecommerceapp/common/login%20widgets/socialbuttons.dart';
import 'package:ecommerceapp/common/styles/spacing_styles.dart';
import 'package:ecommerceapp/features/authentication/screens/login/widgets/loginform.dart';
import 'package:ecommerceapp/features/authentication/screens/login/widgets/loginheader.dart';
import 'package:ecommerceapp/utils/constants/text_string.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkmode = THelperfunctions.isDarkMode(context);
    return Material(
      child:Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TAppstyles.paddingstyle,
          child: Column(
            children: [
              //header

              LoginHeader(darkmode:darkmode),

              // Form
              const LoginForm(),

              //Social Buttons

              const SocialButton(),
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
