import 'package:flutter/material.dart';
import '../../../../../utils/constants/sizes.dart';



class SocialButton extends StatelessWidget {
  const SocialButton({super.key,required this.text1,required this.pressed1,required this.text2,required this.pressed2});
  final String text1,text2;
  final VoidCallback pressed1,pressed2;



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
                      width:200,
                      child: ElevatedButton(
                      onPressed: pressed1,
                      child: Text(text1),
                    ),
                  ),
                  const SizedBox(height: TAppsizes.spacebtwitems),
                  SizedBox(
                      width:200,
                      child: OutlinedButton(
                      onPressed: pressed2,
                      child: Text(text2),
                    ),
                  ),
                  const SizedBox(height:TAppsizes.spacebtwitems),
      ],
    );
  }
}