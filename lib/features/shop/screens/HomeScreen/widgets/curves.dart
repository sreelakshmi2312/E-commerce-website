import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    Path path=Path();
    path.lineTo(0, size.height);
    final firstcurve=Offset(0, size.height-20);
    final lastcurve=Offset(30, size.height-20);
    path.quadraticBezierTo(firstcurve.dx,firstcurve.dy, lastcurve.dx, lastcurve.dy);
    
     final secondcurve=Offset(0, size.height-20);
     final secondlastcurve=Offset(size.width-30, size.height-20);
     path.quadraticBezierTo(secondcurve.dx,secondcurve.dy, secondlastcurve.dx, secondlastcurve.dy);

    final thirdcurve=Offset(size.width,size.height-20);
    final thirdlastcurve=Offset(size.width,size.height);
    path.quadraticBezierTo(thirdcurve.dx,thirdcurve.dy, thirdlastcurve.dx, thirdlastcurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper){
    return true;
  }

}