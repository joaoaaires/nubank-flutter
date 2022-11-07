import 'package:flutter/material.dart';
import 'package:nubank/modules/home/widget/cards/card_one.dart';
import 'package:nubank/modules/home/widget/cards/card_three.dart';
import 'package:nubank/modules/home/widget/cards/card_two.dart';
import 'package:nubank/modules/home/widget/home_page_view_item.dart';

class HomePageView extends StatelessWidget {
  final bool showMenu;
  final ValueChanged<int> onPageChanged;

  const HomePageView({Key key, this.showMenu, this.onPageChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _sizeDefault = 20.0;
    double _sizeHeight = MediaQuery.of(context).size.height;
    double _sizeWidthItem = (_sizeHeight * 0.5) - (_sizeDefault * 2);

    return Container(
      height: (_sizeHeight * 0.5),
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(
        vertical: _sizeDefault,
      ),
      child: PageView(
        onPageChanged: onPageChanged,
        physics:
            showMenu ? NeverScrollableScrollPhysics() : BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          HomePageViewItem(
            width: _sizeWidthItem,
            child: CardOne(),
          ),
          HomePageViewItem(
            width: _sizeWidthItem,
            child: CardTwo(),
          ),
          HomePageViewItem(
            width: _sizeWidthItem,
            child: CardThree(),
          ),
        ],
      ),
    );
  }
}
