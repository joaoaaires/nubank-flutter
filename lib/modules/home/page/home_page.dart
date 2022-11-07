import 'package:flutter/material.dart';
import 'package:nubank/modules/home/widget/home_app_bar.dart';
import 'package:nubank/modules/home/widget/home_dots.dart';
import 'package:nubank/modules/home/widget/home_menu.dart';
import 'package:nubank/modules/home/widget/home_menu_bottom.dart';
import 'package:nubank/modules/home/widget/home_page_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu;
  double _sizeHeight;
  double _sizePaddingTop;

  int _currentyIndex;

  double _yPosition;

  @override
  void initState() {
    super.initState();
    this._showMenu = false;
    this._currentyIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    _sizeHeight = MediaQuery.of(context).size.height;
    _sizePaddingTop = MediaQuery.of(context).padding.top;
    if (_yPosition == null) _yPosition = (_sizeHeight * 0.2) + _sizePaddingTop;
    return getBody();
  }

  Widget getBody() {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        children: <Widget>[
          getDots(),
          getAppBar(),
          getMenu(),
          getMenuBottom(),
          getPageView(),
        ],
      ),
    );
  }

  Widget getAppBar() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: HomeAppBar(
        showMenu: _showMenu,
        onTap: onTapAppBar,
      ),
    );
  }

  void onTapAppBar() {
    setState(() {
      this._showMenu = !this._showMenu;
      _yPosition = _showMenu
          ? (_sizeHeight * 0.75)
          : (_sizeHeight * 0.2) + _sizePaddingTop;
    });
  }

  Widget getDots() {
    return Positioned(
      top: _sizeHeight * 0.74,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 100),
        opacity: _showMenu ? 0 : 1,
        child: HomeDots(
          currentyIndex: _currentyIndex,
        ),
      ),
    );
  }

  Widget getMenu() {
    return Positioned(
      top: (_sizeHeight * 0.2) + _sizePaddingTop,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 100),
        opacity: _showMenu ? 1 : 0,
        child: HomeMenu(),
      ),
    );
  }

  Widget getMenuBottom() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: IgnorePointer(
        ignoring: _showMenu,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: 100),
          opacity: !_showMenu ? 1 : 0,
          child: HomeMenuBottom(),
        ),
      ),
    );
  }

  Widget getPageView() {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 200),
      curve: Curves.easeOut,
      top: _yPosition,
      left: 0,
      right: 0,
      child: GestureDetector(
        onPanUpdate: onPanUpdatePageView,
        child: HomePageView(
          onPageChanged: onPageChangedPageView,
          showMenu: _showMenu,
        ),
      ),
    );
  }

  void onPanUpdatePageView(details) {
    double positionTopLimit = (_sizeHeight * 0.2) + _sizePaddingTop;
    double positionBottomLimit = (_sizeHeight * 0.75);
    double positionMidle = positionTopLimit - positionBottomLimit;
    positionMidle = positionMidle / 2;

    setState(() {
      _yPosition += details.delta.dy;

      _yPosition =
          _yPosition < positionTopLimit ? positionTopLimit : _yPosition;

      _yPosition =
          _yPosition > positionBottomLimit ? positionBottomLimit : _yPosition;

      if (_yPosition != positionBottomLimit && details.delta.dy > 0) {
        _yPosition = _yPosition > positionTopLimit + positionMidle - 50
            ? positionBottomLimit
            : _yPosition;
      }

      if (_yPosition != positionTopLimit && details.delta.dy < 0) {
        _yPosition = _yPosition < positionBottomLimit - positionMidle
            ? positionTopLimit
            : _yPosition;
      }

      if (_yPosition == positionTopLimit) {
        _showMenu = false;
      } else if (_yPosition == positionBottomLimit) {
        _showMenu = true;
      }
    });
  }

  void onPageChangedPageView(index) {
    setState(() {
      _currentyIndex = index;
    });
  }
}
