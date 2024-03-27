import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/colors.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({
    super.key,this.onpressedfn,this.iconcolor,

  });
  final VoidCallback? onpressedfn;
  final Color? iconcolor;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(right:TAppsizes.sm),
      child: Stack(children: [
        IconButton(onPressed: (){}, icon:Icon(Iconsax.shop,color:iconcolor)),
        Positioned(
          right:0,
          child:Container(
           width:18,
           height:18,
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color:TAppcolors.black,),
           child:Center(child: Text('2',style:Theme.of(context).textTheme.labelMedium!.apply(color:TAppcolors.textwhite)))
           ),
        ),
      ],),
    );
  }
}
