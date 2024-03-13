import 'package:flutter/material.dart';
import 'curves.dart';

class ClippedContainer extends StatelessWidget {
  final Widget? child;
  const ClippedContainer({
    super.key,required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child,
    );
  }
}
