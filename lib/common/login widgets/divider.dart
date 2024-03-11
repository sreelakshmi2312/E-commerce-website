import 'package:flutter/material.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/image_string.dart';

class Dividerline extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final darkmode;
  // ignore: prefer_typing_uninitialized_variables
  final textline;
  const Dividerline({super.key,required this.darkmode , required this.textline});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
                      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(child: Divider(color:darkmode?TAppcolors.greydarker:TAppcolors.darkgrey,indent:60,endIndent: 5,thickness: 0.5,)),
                      Text(textline!,style:Theme.of(context).textTheme.labelMedium),
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