import 'package:flutter/material.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/text_string.dart';

//reusable widget
//passing image and text in list 
class ItemList extends StatelessWidget {
  final String titleText;
  const ItemList({super.key,required this.titleText});

  @override
  Widget build(BuildContext context) {
    return ItemCategory(titleText: titleText,itemImage: TImageString.shoeIcon,itemText:TApptexts.shoeCategory,);
  }
}

class ItemCategory extends StatelessWidget {
  const ItemCategory({
    super.key,
    required this.titleText,this.containercolor=TAppcolors.textwhite,required this.itemImage,required this.itemText,this.itemTextColor=TAppcolors.textwhite,this.onTapfn});

  final String titleText;
  final Color? containercolor;
  final String itemImage;
  final String itemText;
  final Color? itemTextColor;
  final VoidCallback? onTapfn;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(left:TAppsizes.defaultspacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(titleText,style:Theme.of(context).textTheme.headlineMedium!.apply(color: TAppcolors.textwhite)),
          const SizedBox(height:TAppsizes.spacebtwitems),
          SizedBox(
            height: 80,
            child: ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_,index){
                return Padding(
                  padding:const EdgeInsets.only(right:TAppsizes.defaultspacing),
                  child: GestureDetector(
                    onTap: onTapfn,
                    child: Column(
                      children:[
                           Container(
                            height:56,
                            width:56,
                            padding:const EdgeInsets.all(TAppsizes.sm),
                            decoration: BoxDecoration(
                              color:containercolor,
                              borderRadius: BorderRadius.circular(100),
                              ),
                              child:Center(
                                child:Image(image: AssetImage(itemImage),fit:BoxFit.cover)
                              ) 
                            
                           ),
                           const SizedBox(height:TAppsizes.spacebtwitems/2),
                           SizedBox(
                            width:55,
                            child: Text(itemText,style:Theme.of(context).textTheme.labelMedium!.apply(color:itemTextColor,),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,))
                                 
                      ]
                    ),
                   
                  ),
                );
              }),
          )
        ]
      ),
    );
  }
}