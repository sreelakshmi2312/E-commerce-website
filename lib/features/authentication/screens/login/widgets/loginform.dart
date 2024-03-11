import 'package:flutter/material.dart';
import '../../../../../utils/constants/text_string.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';



class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                ],
    );
  }
}