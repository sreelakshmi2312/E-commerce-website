import 'package:ecommerceapp/common/styles/shadows.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/colors.dart';


class TProductCard extends StatefulWidget {
  const TProductCard({super.key,required this.imageurl,required this.titletext});
  final String imageurl;
  final String titletext;

  @override
  State<TProductCard> createState() => _TProductCardState();
}

class _TProductCardState extends State<TProductCard> {
  @override
  Widget build(BuildContext context) {
    bool tapped=false;
    return Container(
      width:180,
      padding:const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalproductshadow],
        borderRadius: BorderRadius.circular(TAppsizes.productimageradius),
        color:THelperfunctions.isDarkMode(context)?TAppcolors.greydarker:TAppcolors.textwhite,
      ),
      child:Column(children: [
        Container(
          margin: const EdgeInsets.all(TAppsizes.sm),
          height:180,
          color: THelperfunctions.isDarkMode(context)?TAppcolors.backgrounddark:TAppcolors.backgroundlight,
          padding:const EdgeInsets.all(TAppsizes.sm),
          child:Stack(
            children:[
              Image(image:AssetImage(widget.imageurl),),
              Positioned(
                // top:0,
                // left:0,
                child: Container(
                  width:50,
                  height:TAppsizes.lg,
                  decoration:  BoxDecoration(
                    color:TAppcolors.secondary,
                    borderRadius: BorderRadius.circular(TAppsizes.sm),
                    ),
                    child:const Text('-25%',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),textAlign:TextAlign.center,),
                ),
              ),
              Positioned(
                top:0,
                right:0,
                child:GestureDetector(
                  onTap: (){
                     setState(() {
                          tapped=!tapped;
                     });
                  
                  },
                  child:const Icon(Iconsax.heart5,
                  color:Colors.red),
                )
              )
            ]
          ),
          

        ),
        const SizedBox(height:TAppsizes.md),
        Text(widget.titletext,style:Theme.of(context).textTheme.labelLarge)
       
    
      ],
           
           ),
        );
}
}