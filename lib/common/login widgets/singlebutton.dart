import 'package:flutter/material.dart';

class SingleButton extends StatelessWidget {
  const SingleButton({super.key,required this.text1,required this.pressed1});
  final String text1;
  final VoidCallback pressed1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                      width:double.infinity,
                      child: ElevatedButton(
                      onPressed:pressed1,
                      child: Text(text1),
                    ),
                  );
  }
}