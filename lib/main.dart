import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

import 'banners.dart';
import 'cat.dart';
import 'estab.dart';

void main() => runApp(IfoodPage());


class IfoodPage extends StatelessWidget {
  const IfoodPage({Key key}) : super(key: key);

  final color = Colors.grey;

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      title: 'iFood',
      home:Scaffold (
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 7,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 10,
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    'Entrega',
                    style: TextStyle(color: Colors.red[800], fontSize: 16),),
                  
                  SizedBox(width: 18,),

                  Text(
                    'Retirada',
                    style: TextStyle(color: color, fontSize: 16),
                    ),
                  ],
                ),
            ),

            SizedBox(
              height: 7,
            ),

            Container(
              child: Row(children: <Widget>[
                
                SizedBox(width: 14,),

                Container(
                    color: Colors.red[800],
                    width: 60,
                ),
                
                Container(
                  color: Colors.grey[900],
                  width: 320,
                ),

              ],),
              height: 1,

            ),
            
            SizedBox(
              height: 7,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 10,
              ),

              child: Row(
                children: <Widget>[
                  Text(
                    'Próximo a Via Ciclovia',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  
                  Icon(Icons.keyboard_arrow_down, color: Colors.red[800]),

                ],
              ),
            ),

            SizedBox(
              height: 1,
            ),

            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child:Container(
                      height: 10,
                      color: Colors.grey.shade800,
                      ),
                  )

                ],
              ),
              height: 2,
            ),

            SizedBox(
              height: 7,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
              ),
              child: Text(
                'Categorias',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              height: 120,
              padding: EdgeInsets.only(top: 3, left: 12),
              alignment: Alignment.topLeft,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Cat(
                          caminho: 'lib/images/image_cat1.jpeg',
                          texto: 'Mercado',
                        ),

                        SizedBox(
                          width: 13,
                        ),

                        Cat(
                          caminho: 'lib/images/image_cat2.jpg',
                          texto: 'Pizza',
                        ),
                        
                        SizedBox(
                          width: 13,
                        ),

                        Cat(
                          caminho: 'lib/images/image_cat3.jpg',
                          texto: 'Lanches',
                        ),
                        
                        SizedBox(
                          width: 13,
                        ),
                    
                        Cat(
                          caminho: 'lib/images/image_cat4.jpg',
                          texto: 'Japonesa',
                        ),
                        
                        SizedBox(
                          width: 13,
                        ),

                        Cat(
                          caminho: 'lib/images/image_cat5.jpg',
                          texto: 'Brasileira',
                        ),
                        
                        SizedBox(
                          width: 13,
                        ),

                      ],
                    ),
                  ),

                ], 
                ),
            ),

            Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListView(
                padding: EdgeInsets.only(right: 12),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Promo(
                        caminho: 'lib/images/image_banne1.png',
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 10,
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Promo(
                        caminho: 'lib/images/image_banner2.png',
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 10,
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Promo(
                        caminho: 'lib/images/image_banner3.png',
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 10,
                  ),

                ],
              ),
            ),

            SizedBox(
              height: 17,
            ),

            Container(
              padding: EdgeInsets.only(left: 2),
              alignment: Alignment.topLeft,
              child: Text(
                'Restaurantes',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Container(
              height: 38,
              padding: EdgeInsets.only(top: 3, left: 5),
              alignment: Alignment.topLeft,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget> [
                          FlatButton(
                            color: Colors.grey[850],
                            highlightColor: Colors.red[800],
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Filtros',
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 14,
                                    ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Icon(
                                  Icons.sort,
                                  color: Colors.grey[600],
                                  ),
                              ],
                            ), 
                            ),

                          SizedBox(
                            width: 3,
                          ),

                          FlatButton(
                            color: Colors.grey[850],
                            highlightColor: Colors.red[800],
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Ordenar',
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 14,
                                  ),
                                ),

                                SizedBox(
                                  width: 2,
                                ),

                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black,
                                  size: 18,
                                  ),

                                ],

                              ),
                            ),

                          SizedBox(
                            width: 3,
                          ),

                          FlatButton(
                            color: Colors.grey[850],
                            highlightColor: Colors.red[800],
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Entrega grátis',
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 14,
                                    ),
                                ),
                                ],
                              ),
                          ),

                          SizedBox(
                            width: 3,
                          ),

                          FlatButton(
                            color: Colors.grey[850],
                            highlightColor: Colors.red[800],
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Distância',
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 14,
                                    ),
                                ),
                                ],
                              ),
                          ),

                          SizedBox(
                            width: 6,
                          ),

                      ],

                    ),

                  ),

                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              // height: 170,
              padding: EdgeInsets.only(top: 3, left: 5),
              alignment: Alignment.topLeft,
              child: Column(
                      children: <Widget> [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Estab(
                                      caminho: 'lib/images/imageMAC.png',
                                      name: "MCdonald's",
                                      favorite: '4.7',
                                      tipo: 'Lanches',
                                      dist: '2,7',
                                      temp: '35-45',
                                      frete: '3,00',
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  height: 15,
                                ),

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Estab(
                                      caminho: 'lib/images/imageCOCO.jpeg',
                                      name: "Coco Bambu",
                                      favorite: '4.6',
                                      tipo: 'Frutos do mar',
                                      dist: '5,6',
                                      temp: '60-70',
                                      frete: '9,00',
                                    ),
                                  ],
                                ),                        

                                SizedBox(
                                  height: 15,
                                ),

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Estab(
                                      caminho: 'lib/images/imageCHINA.png',
                                      name: "China in Box",
                                      favorite: '4.6',
                                      tipo: 'Chinesa',
                                      dist: '0,3',
                                      temp: '30-40',
                                      frete: '6,00',
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  height: 15,
                                ),

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Estab(
                                      caminho: 'lib/images/imageHABIB.png',
                                      name: "Habib's",
                                      favorite: '4.3',
                                      tipo: 'Lacnhes',
                                      dist: '2,1',
                                      temp: '40-50',
                                      frete: '7,00',
                                    ),
                                  ],
                                ),     


                      ]
              ),
            ),

          ]
          ),

          bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.black,
            elevation: 1,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.grey[800]),
                title: Text(
                  'Início',
                  style: TextStyle(color: Colors.grey[800], fontSize: 10)), 
                ),

              BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.grey[500]),
                title: Text(
                  'Busca',
                  style: TextStyle(color: Colors.grey[500], fontSize: 8)), 
                ),

              BottomNavigationBarItem(
                icon: Icon(Icons.receipt, color: Colors.grey[500]),
                title: Text(
                  'Busca',
                  style: TextStyle(color: Colors.grey[500], fontSize: 8)), 
                ),

              BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.grey[500]),
                title: Text(
                  'Busca',
                  style: TextStyle(color: Colors.grey[500], fontSize: 8)), 
                ),

            ],
            ),
      ),
      );
  }
}