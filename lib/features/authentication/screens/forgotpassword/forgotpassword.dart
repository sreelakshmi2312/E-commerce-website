import 'package:ecommerceapp/common/login%20widgets/singlebutton.dart';
import 'package:ecommerceapp/common/styles/spacing_styles.dart';
import 'package:ecommerceapp/features/authentication/screens/forgotpassword/emailsent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/text_string.dart';
import '../../../../utils/constants/sizes.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Scaffold(
        appBar: AppBar(automaticallyImplyLeading: true,),
        body:SingleChildScrollView(
          child:Padding(
          padding:TAppstyles.paddingstyle,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TApptexts.forgetPasswordTitle,style:Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height:TAppsizes.spacebtwitems),
              Text(TApptexts.forgetPasswordSubTitle,style:Theme.of(context).textTheme.labelMedium),
              const SizedBox(height:TAppsizes.spacebtwitems),
              TextFormField(decoration: const InputDecoration(label:Text(TApptexts.email),prefixIcon: Icon(Iconsax.direct_right)),),
              const SizedBox(height:TAppsizes.spacebtwitems),
              SingleButton(text1: TApptexts.submit, pressed1: (){Get.off(const ResetEmail());})
            ],
          ),

        )
      ),
      ),
    );
  }
}