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
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalproductshadow],
        borderRadius: BorderRadius.circular(TAppsizes.productimageradius),
        color:THelperfunctions.isDarkMode(context)?TAppcolors.greydarker:TAppcolors.textwhite,
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(TAppsizes.sm),  
          color: THelperfunctions.isDarkMode(context)?TAppcolors.backgrounddark:TAppcolors.backgroundlight,),
          height:180,
          padding:const EdgeInsets.all(TAppsizes.sm),
          child:Stack(
            children:[
              Center(child: Image(image:AssetImage(widget.imageurl),)),
              Positioned(
                top:0,
                left:0,
                child: Container(
                  width:50,
                  height:TAppsizes.lg,
                  decoration:  BoxDecoration(
                    color:TAppcolors.secondary,
                    borderRadius: BorderRadius.circular(TAppsizes.sm),
                    ),
                    child:const Text('25%',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),textAlign:TextAlign.center,),
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
                  child:Container(
                    height:35,
                    width:35,
                    decoration: const BoxDecoration(
                      shape:BoxShape.circle,
                      color:TAppcolors.textwhite),
                    child: const Center(
                      child: Icon(Iconsax.heart5,
                      color:Colors.red),
                    ),
                  ),
                )
              )
            ]
          ),
          

        ),
        const SizedBox(height:TAppsizes.sm),
        Text(widget.titletext,style:Theme.of(context).textTheme.labelLarge),
        const SizedBox(height:TAppsizes.spacebtwitems/2),
        Row(
          children:[
            Padding(
              padding:const EdgeInsets.only(left:TAppsizes.sm),
              child: Text('Nike',overflow:TextOverflow.ellipsis,maxLines: 1,style:Theme.of(context).textTheme.labelMedium)),
            const SizedBox(width:TAppsizes.xs),
            const Icon(Iconsax.verify5,color:TAppcolors.primary,size:TAppsizes.iconxs),
          ]
        )

       
    
      ],
           
           ),
        );
}
}