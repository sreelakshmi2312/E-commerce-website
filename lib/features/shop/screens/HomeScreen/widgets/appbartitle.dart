import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
import 'curvedcontainer.dart';
import '../../../../../utils/constants/text_string.dart';
import '../../../../../common/widgets/appbar.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TCurvedContainer(
      childwidget:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        TAppBar(
          titletext:Padding(
            padding:const EdgeInsets.only(top:TAppsizes.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                Text(TApptexts.homeAppbarTitle,style:Theme.of(context).textTheme.labelMedium!.apply(color:TAppcolors.grey)),
                const SizedBox(height:TAppsizes.sm),
                Text(TApptexts.homeAppbarSubTitle,style:Theme.of(context).textTheme.headlineSmall!.apply(color:TAppcolors.textwhite)),
              ]
            ),
          ),
          actions: [AppBarIcon(iconcolor:TAppcolors.textwhite,onpressedfn:(){})]
        ),
        const SizedBox(height:TAppsizes.spacebtwitems),
        const SearchContainer(),
        
        ],
        ),);
  }
}

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
class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal:TAppsizes.defaultspacing),
      child: Container(
        padding: const EdgeInsets.all(TAppsizes.md),
        width:THelperfunctions.screenWidth(),
        decoration: BoxDecoration(
          border:Border.all(color: TAppcolors.grey),
          borderRadius: BorderRadius.circular(TAppsizes.cardsizelarge),
          color:TAppcolors.textwhite,
          ),
        child:const Row(
          children: [
            Icon(Iconsax.search_normal,color: TAppcolors.black,)
          ],
        )
      ));
  }
}

