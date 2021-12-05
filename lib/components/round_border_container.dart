import 'package:flutter/material.dart';

class RoundBorderContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  final double padding;

  const RoundBorderContainer({
    Key? key,
    required this.color,
    required this.padding,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(5))),
      padding: EdgeInsets.all(padding),
      child: child,
    );
  }
}
