import 'package:flutter/material.dart';
import 'package:optik_hes/cart.dart';

void main() {
  runApp(DetailPage());
}

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 27, right: 27),
            height: 53,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                    child: Image(image: AssetImage('assets/icons/back.png'))),
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
            height: 313,
            child: Image(
              image: AssetImage('assets/images/detail_cheese.png'),
              height: 313,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(children: <Widget>[
              Text(
                'Beef Cheese Burger',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Chees burger with big size beef',
                style: TextStyle(fontSize: 14),
              ),
              Container(height: 24),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Rp 16.500'),
                ),
              )
            ]),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CartPage();
                }));
              },
              child: Text('add to cart'),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.orange)))),
            ),
          )
        ],
      )),
    );
  }
}
