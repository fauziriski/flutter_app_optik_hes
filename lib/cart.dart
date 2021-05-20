import 'package:flutter/material.dart';

void main() {
  runApp(CartPage());
}

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 27, right: 27),
          height: 53,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                  child: Image(
                image: AssetImage('assets/icons/back.png'),
              )),
              Expanded(
                  child: TextField(
                autocorrect: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white70,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                ),
              )),
              Expanded(
                  child: Image(
                image: AssetImage('assets/icons/cart.png'),
              )),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 57, right: 29, left: 29, bottom: 20),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                      child: Image(
                    image: AssetImage('assets/images/cart_big_burger.png'),
                    height: 55,
                    width: 65,
                  )),
                  Container(
                    margin: EdgeInsets.only(right: 7, left: 8),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Iced Cappuchino',
                            style: TextStyle(fontSize: 24),
                          ),
                          Text(
                            'Rp. 16.500',
                            style: TextStyle(fontSize: 14),
                          ),
                        ]),
                  ),
                  Container(
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 20,
                            height: 26,
                            color: Colors.orange,
                            child: Text('-'),
                          ),
                          Text('2'),
                          Container(
                            width: 20,
                            height: 26,
                            color: Colors.orange,
                            child: Text('+'),
                          ),
                        ]),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                      child: Image(
                    image: AssetImage('assets/images/iced_cart.png'),
                    height: 55,
                    width: 65,
                  )),
                  Container(
                    margin: EdgeInsets.only(right: 7, left: 8),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Iced Cappuchino',
                            style: TextStyle(fontSize: 24),
                          ),
                          Text(
                            'Rp. 16.500',
                            style: TextStyle(fontSize: 14),
                          ),
                        ]),
                  ),
                  Container(
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 20,
                            height: 26,
                            color: Colors.orange,
                            child: Text('-'),
                          ),
                          Text('2'),
                          Container(
                            width: 20,
                            height: 26,
                            color: Colors.orange,
                            child: Text('+'),
                          ),
                        ]),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 20, right: 29, left: 29, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'Total',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Rp. 38.000',
                  style: TextStyle(fontSize: 16),
                )
              ],
            )),
        Container(
            margin: EdgeInsets.only(top: 10, right: 29, left: 29, bottom: 10),
            child: ElevatedButton(
                child: Text('Order'),
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.orange)))))),
      ])),
    );
  }
}
