import 'package:flutter/material.dart';
import 'package:ecommerceapp/utils/devices/device_utility.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';



class Onboardingskip extends StatelessWidget {
  const Onboardingskip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top:TDeviceutils.getAppbarheight(),
      right:TAppsizes.defaultspacing,
      child:TextButton(
        onPressed: (){},
        child:const Text('Skip'),
      )
     );
  }
}
