import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank/modules/home/widget/home_menu_bottom_item.dart';

class HomeMenuBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeDefault = 45.0;
    double _sizeHeight = MediaQuery.of(context).size.height;
    double _paddingTop = MediaQuery.of(context).padding.bottom;
    double _sizeWidthItem = (_sizeHeight * 0.25) - (sizeDefault * 2);

    return Container(
      height: _sizeHeight * 0.25,
      margin: EdgeInsets.only(top: _paddingTop),
      color: Colors.transparent,
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(
          left: 20.0,
          top: sizeDefault,
          bottom: sizeDefault,
        ),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          HomeMenuBottomItem(
            title: "Indicar amigos",
            icon: Icons.person_add,
            width: _sizeWidthItem,
          ),
          HomeMenuBottomItem(
            title: "Recarga de celular",
            icon: Icons.phone_android,
            width: _sizeWidthItem,
          ),
          HomeMenuBottomItem(
            title: "Cobrar",
            icon: Icons.chat_bubble_outline,
            width: _sizeWidthItem,
          ),
          HomeMenuBottomItem(
            title: "Depositar",
            icon: Icons.attach_money,
            width: _sizeWidthItem,
          ),
          HomeMenuBottomItem(
            title: "Transferir",
            icon: Icons.money_off,
            width: _sizeWidthItem,
          ),
          HomeMenuBottomItem(
            title: "Ajustar limite",
            icon: Icons.tune,
            width: _sizeWidthItem,
          ),
          HomeMenuBottomItem(
            title: "Me Ajuda",
            icon: Icons.help_outline,
            width: _sizeWidthItem,
          ),
          HomeMenuBottomItem(
            title: "Pagar",
            icon: Icons.monetization_on,
            width: _sizeWidthItem,
          ),
          HomeMenuBottomItem(
            title: "Bloquear cartão",
            icon: Icons.lock_open,
            width: _sizeWidthItem,
          ),
          HomeMenuBottomItem(
            title: "Cartão virtual",
            icon: Icons.credit_card,
            margin: const EdgeInsets.only(right: 20.0),
            width: _sizeWidthItem,
          ),
        ],
      ),
    );
  }
}
