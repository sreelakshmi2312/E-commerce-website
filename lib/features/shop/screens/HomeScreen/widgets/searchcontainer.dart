import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class SearchContainer extends StatelessWidget {

  const SearchContainer({
    super.key,
    this.showBackground=true,
    this.showBorder=true,
    
  });
  final bool showBackground,showBorder;

  @override
  Widget build(BuildContext context) {
    final dark=THelperfunctions.isDarkMode(context);
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal:TAppsizes.defaultspacing),
      child: Container(
        padding: const EdgeInsets.all(TAppsizes.md),
        width:THelperfunctions.screenWidth(),
        decoration: BoxDecoration(
          border:showBorder?Border.all(color: TAppcolors.grey):null,
          borderRadius: BorderRadius.circular(TAppsizes.cardsizelarge),
          color:showBackground?dark?TAppcolors.black:TAppcolors.textwhite:TAppcolors.transparent
          ),
        child:Row(
          children: [
            const Icon(Iconsax.search_normal,color: TAppcolors.greydarker,),
            const SizedBox(width:TAppsizes.spacebtwitems),
            Text('Search in Store', style: Theme.of(context).textTheme.bodySmall)
          ],
        )
      ));
  }
}

