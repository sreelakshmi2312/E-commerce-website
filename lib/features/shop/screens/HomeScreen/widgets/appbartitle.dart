import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import 'curvedcontainer.dart';
import '../../../../../utils/constants/text_string.dart';
import '../../../../../common/widgets/appbar.dart';
import 'searchcontainer.dart';
import 'appbaricon.dart';
import 'itemlist.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
    required this.titleText,

  });
  final String titleText;

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
        const SizedBox(height:TAppsizes.spacebtwitems),
        const ItemList(titleText: "Popular Categories",),
        
        
        ],
        ),);
  }
}

