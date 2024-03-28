import 'package:flutter/material.dart';
import '../../../../../utils/constants/sizes.dart';

class ItemsSlider extends StatelessWidget {
  const ItemsSlider({
    super.key,
     this.onPressed,
     this.width,
     this.height,
     this.padding,
     this.applyBorderRadius=true,
     this.borderradius=TAppsizes.md,
     this.fit=BoxFit.contain,
     this.isNetworkImage=false,
    required this.imageString,
  });

  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final bool applyBorderRadius;
  final double borderradius;
  final BoxFit? fit;
  final bool isNetworkImage;
  final String imageString;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width:width,
        height:height,
        padding: padding,
        decoration: BoxDecoration(borderRadius:BorderRadius.circular(TAppsizes.md) ),
        child:ClipRRect(
          borderRadius:applyBorderRadius?BorderRadius.circular(borderradius):BorderRadius.zero,
          child: Image(fit:fit,image:isNetworkImage?NetworkImage(imageString):AssetImage(imageString) as ImageProvider),
    ),
      ),
    );
  }
}