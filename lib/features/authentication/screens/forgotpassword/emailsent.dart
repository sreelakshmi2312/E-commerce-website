import 'package:ecommerceapp/common/login%20widgets/singlebutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerceapp/common/styles/spacing_styles.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import '../../../../utils/constants/image_string.dart';
import '../../../../utils/constants/text_string.dart';
import '../../../../utils/constants/sizes.dart';

class ResetEmail extends StatelessWidget {
  const ResetEmail({super.key});

  @override
  Widget build(BuildContext context){
      return Material(
      child:Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading:false,
          actions: [
          IconButton(onPressed:(){ Get.back();}, icon: const Icon(CupertinoIcons.clear))
        ],),
        body: SingleChildScrollView(
          child:Padding(padding:TAppstyles.paddingstyle,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: const AssetImage(TImageString.emailimage), width:THelperfunctions.screenWidth()*0.6,),
              const SizedBox(height:TAppsizes.spacebtwitems),
              Text(TApptexts.changeYourPasswordTitle,style:Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
              const SizedBox(height:TAppsizes.spacebtwitems),
              Text(TApptexts.changeYourPasswordSubTitle,style:Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
              const SizedBox(height:TAppsizes.spacebtwsections),
              SingleButton(text1: TApptexts.done, pressed1: (){}),
              ],
          ),
          )
         )
      ),
    );
  }
}