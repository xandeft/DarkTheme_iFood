import 'package:flutter/material.dart';

class Cat extends StatelessWidget {

  final String caminho;
  final String texto;

  const Cat({Key key, this.caminho, this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset(
            caminho,
            height: 70,
          ),
        ),

        SizedBox(
          height: 7,
        ),

        Text(
          texto,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),

      ],);
  }
}