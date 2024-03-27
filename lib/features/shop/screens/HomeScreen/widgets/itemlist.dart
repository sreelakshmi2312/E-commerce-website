import 'package:flutter/material.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/colors.dart';

class ItemList extends StatelessWidget {
  final String titleText;
  const ItemList({super.key,required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(titleText,style:Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height:TAppsizes.spacebtwitems),
        ListView.builder(
          itemCount: 6,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_,index){
            return Column(
              children:[
                   Container(
                    height:58,
                    width:58,
                    padding:const EdgeInsets.only(left:TAppsizes.sm),
                    decoration: BoxDecoration(
                      color:TAppcolors.textwhite,
                      borderRadius: BorderRadius.circular(100),
                      ),
                      child:const Center(
                        child:Image(image: AssetImage(TImageString.sportIcon),fit:BoxFit.cover)
                      ) 
                    
                   ),
                   const SizedBox(height:TAppsizes.spacebtwitems),
                   const SizedBox(
                    child:Text('Shoes Category')
                   )

              ]
            );
          })
      ]
    );
  }
}