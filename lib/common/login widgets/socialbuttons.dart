import 'package:ecommerceapp/features/authentication/screens/signup/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';


class SocialButton extends StatelessWidget {
  const SocialButton({super.key,});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
                      width:200,
                      child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(TApptexts.signIn),
                    ),
                  ),
                  const SizedBox(height: TAppsizes.spacebtwitems),
                  SizedBox(
                      width:200,
                      child: OutlinedButton(
                      onPressed: (){Get.to(const SignUpScreen());},
                      child: const Text(TApptexts.createAccount),
                    ),
                  ),
                  const SizedBox(height:TAppsizes.spacebtwitems),
      ],
    );
  }
}