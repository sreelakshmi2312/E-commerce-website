import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceapp/utils/constants/image_string.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/sizes.dart';
import '../HomeScreen/widgets/appbartitle.dart';
import '../../screens/HomeScreen/widgets/itemslider.dart';




class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Scaffold(
         body:SingleChildScrollView(
            child: Column(
               children:[
                const AppBarTitle(),
                Padding(
                  padding:const EdgeInsets.all(TAppsizes.defaultspacing),
                  child:CarouselSlider(
                    options:CarouselOptions(
                    viewportFraction:0.8,
                    ),
                    
                    items:const [
                      Padding(padding:EdgeInsets.all(TAppsizes.defaultspacing) ,child:ItemsSlider(imageString: TImageString.promoBanner1)),
                      Padding(padding:EdgeInsets.all(TAppsizes.defaultspacing),child:ItemsSlider(imageString: TImageString.promoBanner2)),
                      Padding(padding:EdgeInsets.all(TAppsizes.defaultspacing),child: ItemsSlider(imageString: TImageString.promoBanner3)),
                    ]),
                    )
                    ]
                  )
                )
                    )
                  
                );

  }
}

