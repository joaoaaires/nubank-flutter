import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  final bool showMenu;
  final VoidCallback onTap;

  const HomeAppBar({Key key, this.showMenu, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _sizeHeight = MediaQuery.of(context).size.height;
    double _paddingTop = MediaQuery.of(context).padding.top;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: _sizeHeight * 0.2,
        margin: EdgeInsets.only(top: _paddingTop),
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  'https://logodownload.org/wp-content/uploads/2019/08/nubank-logo-3.png',
                  height: _sizeHeight * 0.04,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  'João',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            Icon(
              showMenu ? Icons.expand_less : Icons.expand_more,
            ),
          ],
        ),
      ),
    );
  }
}
