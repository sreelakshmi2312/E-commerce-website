import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import 'curvedcontainer.dart';
import '../../../../../utils/constants/text_string.dart';
import '../../../../../common/widgets/appbar.dart';
import 'appbaricon.dart';
import 'searchcontainer.dart';
import 'itemlist.dart';


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
                Text(TApptexts.homeAppbarTitle,style:Theme.of(context).textTheme.labelMedium!.apply(color:TAppcolors.grey)),           //reusable(change title to be given as parameters)
                const SizedBox(height:TAppsizes.sm),
                Text(TApptexts.homeAppbarSubTitle,style:Theme.of(context).textTheme.headlineSmall!.apply(color:TAppcolors.textwhite)),  //reusable(change subtitle to be given as parameters)
              ]
            ),
          ),
          actions: [AppBarIcon(iconcolor:TAppcolors.textwhite,onpressedfn:(){})]
     
         ),
          const SizedBox(height:TAppsizes.spacebtwitems),
          const SearchContainer(),
          const SizedBox(height:TAppsizes.spacebtwitems),
          const Padding(
            padding: EdgeInsets.only(top:TAppsizes.defaultspacing),
            child:  ItemList(titleText: "Popular Categories")),
        
        
        
        ],
        ),);
  }
}

