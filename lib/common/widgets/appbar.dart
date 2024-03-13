import 'package:ecommerceapp/utils/devices/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class TAppBar extends StatelessWidget implements PreferredSizeWidget{
  const TAppBar({super.key,
  this.titletext,
  this.actions,
  this.leadingicon,
  this.showbackarrow=false,
  this.leadingonpressed,
  });
  
  final Widget? titletext;
  final bool showbackarrow;
  final List<Widget>? actions;
  final IconData? leadingicon;
  final VoidCallback? leadingonpressed;


  @override
  Widget build(BuildContext context) {
    return AppBar(
                 automaticallyImplyLeading: false,
                 leading:showbackarrow?IconButton(onPressed: ()=>Get.back(), icon: const Icon(Iconsax.arrow_left))
                 :(leadingicon!=null?IconButton(onPressed: leadingonpressed, icon: Icon(leadingicon)):null),
                 title:titletext,
                 actions: actions,
                 );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(TDeviceutils.getAppbarheight());
}