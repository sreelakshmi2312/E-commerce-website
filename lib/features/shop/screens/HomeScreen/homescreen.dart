import 'package:flutter/material.dart';
import '../../../../utils/constants/sizes.dart';
import '../HomeScreen/widgets/appbartitle.dart';
import '../HomeScreen/widgets/carouselslider.dart';





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
                  child:ItemSlider(),
                    ),
               ]
            )
                )
                    )
                  
                );

  }
}

