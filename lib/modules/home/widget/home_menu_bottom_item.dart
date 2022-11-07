import 'package:flutter/material.dart';

class HomeMenuBottomItem extends StatelessWidget {
  final double width;
  final String title;
  final IconData icon;
  final EdgeInsetsGeometry margin;

  const HomeMenuBottomItem({
    Key key,
    this.width,
    this.margin: const EdgeInsets.only(right: 8.0),
    this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white24,
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(icon),
          Text(title),
        ],
      ),
    );
  }
}
