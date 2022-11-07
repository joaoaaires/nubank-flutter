import 'package:flutter/material.dart';
import 'package:nubank/modules/home/widget/home_menu_item.dart';

class HomeMenu extends StatelessWidget {
  final double height;

  const HomeMenu({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _sizeDefault = 20.0;
    double _sizeHeight = MediaQuery.of(context).size.height;
    double _sizeWidthItem = (_sizeHeight * 0.5) - (_sizeDefault * 2);

    return Container(
      height: (_sizeHeight * 0.5),
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(
        horizontal: _sizeDefault
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(
              "https://img3.gratispng.com/dy/26ad91a0ae6d8988974a155c55eab07a/L0KzQYm3V8A6N5dqh5H0aYP2gLBuTflvbpD3hdN9aXBxPcL5TfNwbJYyedDtcnBsdH7rjCdvdJDmfJ96cnPydLa0VfI1O5cAUNdrMUi1Q4q1VMc0PWE6Sak6NUO0QYm4VMU1P2M8SZD5bne=/kisspng-information-qr-code-android-download-qrcode-5b43f98eb18239.4735051715311814547271.png",
              height: 120,
              color: Colors.white,
            ),
            Text.rich(
              TextSpan(
                text: "Banco ",
                children: [
                  TextSpan(
                    text: "260 - Nu Pagamentos S.A",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
                style: TextStyle(fontSize: 12),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text.rich(
              TextSpan(
                text: "Agência ",
                children: [
                  TextSpan(
                    text: "0001",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
                style: TextStyle(fontSize: 12),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text.rich(
              TextSpan(
                text: "Conta ",
                children: [
                  TextSpan(
                    text: "000000-0",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
                style: TextStyle(fontSize: 12),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            HomeMenuItem(
              icon: Icons.info_outline,
              title: "Me ajuda",
            ),
            HomeMenuItem(
              icon: Icons.person_outline,
              title: "Perfil",
            ),
            HomeMenuItem(
              icon: Icons.settings,
              title: "Configurar conta",
            ),
            HomeMenuItem(
              icon: Icons.store_mall_directory,
              title: "Pedir Conta PJ",
            ),
            HomeMenuItem(
              icon: Icons.phone_android,
              title: "Configurações",
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 35,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.7,
                  color: Colors.white54,
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
                child: Text(
                  "SAIR DO APP",
                  style: TextStyle(fontSize: 10),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
