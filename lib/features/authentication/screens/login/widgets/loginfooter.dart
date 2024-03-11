import 'package:flutter/material.dart';
import '../../../../../utils/constants/text_string.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/image_string.dart';

class LoginFooter extends StatelessWidget {
  
  final darkmode;
  const LoginFooter({super.key,required this.darkmode});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
                      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(child: Divider(color:darkmode?TAppcolors.greydarker:TAppcolors.darkgrey,indent:60,endIndent: 5,thickness: 0.5,)),
                      Text(TApptexts.orSignInWith.capitalize!,style:Theme.of(context).textTheme.labelMedium),
                      Flexible(child: Divider(color:darkmode?TAppcolors.greydarker:TAppcolors.darkgrey,indent:5,endIndent: 60,thickness: 0.5,))
                    ],
                  ),
                  const SizedBox(height:TAppsizes.spacebtwitems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width:TAppsizes.iconlg,
                        height:TAppsizes.iconlg,
                        decoration: BoxDecoration(border:Border.all(color:TAppcolors.grey),borderRadius:BorderRadius.circular(100)),
                        child:IconButton(onPressed: (){},
                        icon:const Image(image:AssetImage(TImageString.googlelogo))
                      ),
                      ),
                      const SizedBox(width: TAppsizes.sm),
                      Container(
                        width:TAppsizes.iconlg,
                        height:TAppsizes.iconlg,
                        decoration: BoxDecoration(border:Border.all(color:TAppcolors.grey),borderRadius:BorderRadius.circular(100)),
                        child:IconButton(onPressed: (){},
                        icon:const Image(image:AssetImage(TImageString.facebooklogo))
                      ),
                      ),
                    ],
                  )
      ]
    );
}
}