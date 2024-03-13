import 'package:flutter/material.dart';
import '../HomeScreen/widgets/curvedcontainer.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child:Scaffold(
         body:SingleChildScrollView(
          child:Column(
             children:[
              TCurvedContainer(),
             ]
          )
         )
      )
    );
  }
}




