import 'package:ecommerceapp/common/styles/spacing_styles.dart';
import 'package:ecommerceapp/utils/constants/image_string.dart';
import 'package:ecommerceapp/utils/constants/text_string.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/sizes.dart';
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
            // header
            children: [
              Image(
                height: 150,
                image: AssetImage(
                    darkmode ? TImageString.darkapplogo : TImageString.lightapplogo,
                  ),
              ),
              Text(
                TApptexts.hometitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TAppsizes.sm),
              Text(
                TApptexts.homesubtitle,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height:TAppsizes.spacebtwitems),
              // Form
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      labelText: TApptexts.email,
                    ),
                  ),
                  const SizedBox(height: TAppsizes.spacebtwitems),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.password_check),
                      labelText: TApptexts.password,
                      suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  const SizedBox(height: TAppsizes.spacebtwitems / 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          const Text(TApptexts.rememberMe),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(TApptexts.forgetPassword),
                      )
                    ],
                  ),
                  const SizedBox(height: TAppsizes.spacebtwitems),
                  SizedBox(
                      width:150,
                      child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(TApptexts.signIn),
                    ),
                  ),
                  const SizedBox(height: TAppsizes.spacebtwitems),
                  SizedBox(
                      width:150,
                      child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(TApptexts.createAccount),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
