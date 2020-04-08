import 'package:flutter/material.dart';

class Promo extends StatelessWidget {

  final String caminho;

  const Promo({Key key, this.caminho}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            caminho,
            height: 200,
          ),
        ),

        ],
      );
  }
}