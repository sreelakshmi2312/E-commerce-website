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
  });

  @override
  Widget build(BuildContext context) {
    final controller =Get.put(HomeScreenController());
    return Column(
      children: [CarouselSlider(
        options:CarouselOptions(
        viewportFraction:1,
        onPageChanged: (index,_)=>controller.updatePageIndicator(index)
        ),
        
        items:const [
          Padding(padding:EdgeInsets.all(1) ,child:ItemsSlider(imageString: TImageString.promoBanner1)),
          Padding(padding:EdgeInsets.all(1),child:ItemsSlider(imageString: TImageString.promoBanner2)),
          Padding(padding:EdgeInsets.all(1),child: ItemsSlider(imageString: TImageString.promoBanner3)),
        ]
        ),
const SizedBox(height:TAppsizes.spacebtwitems),
                    Obx(()=>
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                      for(int i=0;i<3;i++)
                      Container(width:20,height: 4, decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color:controller.carousalCurrentIndex.value==i?TAppcolors.primary:Colors.grey),margin: const EdgeInsets.only(right:10))
                      ]
                                        ),
                    )
                    ]
    );
  }
}

