import 'package:flutter/material.dart';

class HomeMenuItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const HomeMenuItem({Key key, this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 0.7,
            color: Colors.white54,
          ),
          bottom: BorderSide(
            width: 0.7,
            color: Colors.white54,
          ),
        ),
      ),
      child: RaisedButton(
        color: Colors.purple[800],
        highlightColor: Colors.transparent,
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        splashColor: Colors.purple[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(icon),
                SizedBox(
                  width: 15,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Icon(Icons.chevron_right, size: 16,),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
