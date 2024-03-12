import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import '../../../utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../controllers/mainscreencontroller.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    final dark=THelperfunctions.isDarkMode(context);
    final controller=Get.put(MainScreenController());
    return Material(
      child:Scaffold(
        bottomNavigationBar:Obx(() => NavigationBar(
          backgroundColor: dark?TAppcolors.black:TAppcolors.textwhite.withOpacity(0.5),
          indicatorColor:dark?TAppcolors.textwhite.withOpacity(0.1):TAppcolors.black.withOpacity(0.1),
          selectedIndex:controller.selectedpageindex.value,
          height:80,
          elevation: 0,
          onDestinationSelected: (index){controller.selectedpageindex.value=index;},
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
          ),
          ),
          body: Obx(() => controller.screens[controller.selectedpageindex.value]),
      ),
    );
  }
}

