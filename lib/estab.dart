import 'package:flutter/material.dart';

class Estab extends StatelessWidget {

  final String caminho;
  final String name;
  final String favorite;
  final String tipo;
  final String dist;
  final String temp;
  final String frete;

  const Estab({Key key, this.caminho, this.name, this.favorite, this.tipo, this.dist, this.temp, this.frete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset(
            caminho,
            height: 70,
          ),
        ),

        SizedBox(
          width: 10,
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                ),
            ),

            SizedBox(
              height: 3,
            ),

            Row(
              children: <Widget>[

                Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                  size: 13,
                ),

                SizedBox(
                  width: 3,
                ),

                Text(
                  favorite,
                  style: TextStyle(
                    color: Colors.yellow[700],
                    fontSize: 14,
                  ),
                ),

                SizedBox(
                  width: 5,
                ),

                Icon(
                  Icons.lens, color: Colors.grey[850], size: 5,
                ),

                SizedBox(
                  width: 5,
                ),

                Text(
                  tipo,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12,
                  ),
                ),

                SizedBox(
                  width: 5,
                ),

                Icon(
                  Icons.lens, color: Colors.grey[850], size: 5,
                ),

                SizedBox(
                  width: 5,
                ),

                Text(
                  '$dist km',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12,
                  ),
                ),

              ],
            ),

            SizedBox(
              height: 3,
            ),

            Row(
              children: <Widget>[
                Text(
                  '$temp min',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12
                  ),
                ),

                SizedBox(
                  width: 5,
                ),

                Icon(
                  Icons.lens, color: Colors.grey[850], size: 5,
                ),

                SizedBox(
                  width: 5,
                ),

                Text(
                  "R\$ $frete",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12
                  ),
                ),


              ],
            ),


          ],
        ),




      ],
    );
  }
}