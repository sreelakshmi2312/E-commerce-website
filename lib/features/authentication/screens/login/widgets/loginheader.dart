import 'package:flutter/material.dart';
import 'package:ecommerceapp/utils/constants/image_string.dart';
import 'package:ecommerceapp/utils/constants/text_string.dart';
import '../../../../../utils/constants/sizes.dart';

class LoginHeader extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final darkmode;
  const LoginHeader({super.key,required this.darkmode});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
                height: 150,
                image: AssetImage(
                    darkmode ?TImageString.darkapplogo : TImageString.lightapplogo,
                  ),
              ),
              Text(
                TApptexts.logintitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TAppsizes.sm),
              Text(
                TApptexts.loginsubtitle,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height:TAppsizes.spacebtwitems),
      ],
    );
  }
}