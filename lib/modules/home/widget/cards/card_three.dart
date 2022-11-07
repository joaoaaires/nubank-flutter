import 'package:flutter/material.dart';

class CardThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            Icons.card_giftcard,
            color: Colors.black,
          ),
          Text(
            "Nubank Rewards",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26.0,
              color: Colors.black,
            ),
          ),
          Text(
            "Acumule pontos que nunca expiram e troque por passagens aéreas ou serviços que você realmente usa.",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.0),
              border: Border.all(
                width: 0.7,
                color: Colors.purple,
              ),
            ),
            child: RaisedButton(
              child: Text("ATIVE O SEU REWARDS"),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
