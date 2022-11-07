import 'package:flutter/material.dart';

class HomePageViewItem extends StatelessWidget {
  final double width;
  final Widget child;
  final EdgeInsetsGeometry margin;

  const HomePageViewItem({
    Key key,
    this.width,
    this.child,
    this.margin : const EdgeInsets.symmetric(horizontal: 20.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
      ),
      child: child,
    );
  }
}
