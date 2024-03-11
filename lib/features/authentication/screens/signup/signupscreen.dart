import 'package:ecommerceapp/common/login%20widgets/divider.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/text_string.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/common/styles/spacing_styles.dart';
import 'package:iconsax/iconsax.dart';
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
                Text(
                  TApptexts.signuptitle,
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
                Row(
                    children: [
                      Checkbox(value: true , onChanged: (value){}),
                      Text.rich(
                        TextSpan(
                          children:[
                             TextSpan(text:'${TApptexts.iAgreeTo}  ',style:Theme.of(context).textTheme.bodySmall),
                             TextSpan(text:'${TApptexts.termsOfUse}  ',style:Theme.of(context).textTheme.bodyMedium!.apply(
                              color:dark?TAppcolors.textwhite:TAppcolors.primary,
                              decoration: TextDecoration.underline,
                              decorationColor: dark?TAppcolors.textwhite:TAppcolors.primary,
                             ),),
                             TextSpan(text:'${TApptexts.and}  ',style:Theme.of(context).textTheme.bodySmall),
                             TextSpan(text:TApptexts.privacyPolicy,style:Theme.of(context).textTheme.bodyMedium!.apply(
                              color:dark?TAppcolors.textwhite:TAppcolors.primary,
                              decoration: TextDecoration.underline,
                              decorationColor: dark?TAppcolors.textwhite:TAppcolors.primary,
                             ),
                             ),
                             ],
                      ),
                      ),
                    ],
                ),
                const SizedBox(height:TAppsizes.spacebtwitems),
                SizedBox(
                      width:double.infinity,
                      child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(TApptexts.createAccount),
                    ),
                  ),
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