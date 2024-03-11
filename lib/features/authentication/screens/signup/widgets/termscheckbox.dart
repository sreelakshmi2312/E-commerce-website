import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/text_string.dart';

class TermsofUse extends StatelessWidget {
  const TermsofUse({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperfunctions.isDarkMode(context);
    return Row( children: [
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
                );
             
  }
}