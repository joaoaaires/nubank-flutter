import 'package:flutter/material.dart';

class CardOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.payment,
                              color: Colors.grey[800],
                              size: 38.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "Cartão de crédito",
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "FATURA ATUAL",
                                  style: TextStyle(
                                    color: Colors.cyan,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "R\$ 500,00",
                                  style: TextStyle(
                                    color: Colors.cyan,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: "Limite disponível",
                                    children: [
                                      TextSpan(
                                        text: " R\$ 2.200,50",
                                        style: TextStyle(
                                            color: Colors.lightGreen,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(color: Colors.cyan, width: 7),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(color: Colors.lightGreen, width: 7),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Flexible(
                    child: Text(
                      "Compra mais recente em Super Mercado no valor de R\$ 50,00",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
