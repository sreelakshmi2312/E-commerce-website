import 'package:ecommerceapp/features/shop/controllers/homescreen_controllers.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../screens/HomeScreen/widgets/itemslider.dart';
import 'package:ecommerceapp/utils/constants/image_string.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/colors.dart';

class ItemSlider extends StatelessWidget {
  const ItemSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller =Get.put(HomeScreenController());
    return Column(
      children: [CarouselSlider(
        options:CarouselOptions(
        viewportFraction:1,
        onPageChanged: (index,_)=>controller.updatePageIndicator(index)
        ),
        
        items:banners.map((url) => ItemsSlider(imageString:url)).toList()
        ),
const SizedBox(height:TAppsizes.spacebtwitems),
                    Obx(()=>
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                      for(int i=0;i<banners.length;i++)
                      Container(width:20,height: 4, decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color:controller.carousalCurrentIndex.value==i?TAppcolors.primary:Colors.grey),margin: const EdgeInsets.only(right:10))
                      ]
                                        ),
                    )
                    ]
    );
  }
}

