import 'package:ecommerceapp/common/styles/spacing_styles.dart';
import 'package:ecommerceapp/features/authentication/screens/login/widgets/loginfooter.dart';
import 'package:ecommerceapp/features/authentication/screens/login/widgets/loginform.dart';
import 'package:ecommerceapp/features/authentication/screens/login/widgets/loginheader.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkmode = THelperfunctions.isDarkMode(context);
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: TAppstyles.paddingstyle,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //header

              LoginHeader(darkmode:darkmode),

              // Form
              const LoginForm(),

              //Login footer

              LoginFooter(darkmode:darkmode),
               
               ],
              )
          ),
        ),
      );
  }
}
