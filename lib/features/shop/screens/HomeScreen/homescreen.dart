import 'package:ecommerceapp/features/shop/screens/HomeScreen/widgets/productcard.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/sizes.dart';
import '../HomeScreen/widgets/appbartitle.dart';
import '../HomeScreen/widgets/carouselslider.dart';
import '../../../../utils/constants/image_string.dart';





class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child:Scaffold(
         body:SingleChildScrollView(
            child: Column(
               children:[
                AppBarTitle(),
                Padding(
                  padding:EdgeInsets.all(TAppsizes.defaultspacing),
                  child:ItemSlider(banners:[TImageString.promoBanner1,TImageString.promoBanner2,TImageString.promoBanner3]),
                    ),
                  TProductCard(imageurl:TImageString.product1,titletext: "Nike Air Sports Shoe",),
               ]
            )
                )
                    )
                  
                );

  }
}

