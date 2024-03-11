import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/text_string.dart';

class SignupFields extends StatelessWidget {
  const SignupFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(TApptexts.signuptitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height:TAppsizes.spacebtwitems),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                          label: Text(TApptexts.firstName),
                          prefixIcon: Icon(Iconsax.user_edit),
                        ),
                      ),
                    ),
                    const SizedBox(width:TAppsizes.inputfieldspacing),
                    Expanded(
                      child: TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                          label: Text(TApptexts.lastName),
                          prefixIcon: Icon(Iconsax.user_edit),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height:TAppsizes.spacebtwitems),
                TextFormField(
                        expands:false,
                        decoration: const InputDecoration(
                          label: Text(TApptexts.username),
                          prefixIcon: Icon(Iconsax.user_edit),
                        ),
                      ),
                const SizedBox(height:TAppsizes.spacebtwitems),
                TextFormField(
                        expands:false,
                        decoration: const InputDecoration(
                          label: Text(TApptexts.email),
                          prefixIcon: Icon(Iconsax.direct),
                        ),
                      ),
                const SizedBox(height:TAppsizes.spacebtwitems),
                TextFormField(
                        expands:false,
                        decoration: const InputDecoration(
                          label: Text(TApptexts.phoneNo),
                          prefixIcon: Icon(Iconsax.call),
                        ),
                      ),
                const SizedBox(height:TAppsizes.spacebtwitems),
                TextFormField(
                        expands:false,
                        decoration: const InputDecoration(
                          label: Text(TApptexts.password),
                          prefixIcon: Icon(Iconsax.password_check),
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                const SizedBox(height:TAppsizes.spacebtwitems),
      ],
    );
    
  }
}