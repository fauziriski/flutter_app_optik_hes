import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

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
        home: SafeArea(
      child: Scaffold(
          body: ListView(children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 20, top: 20),
          height: 53,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset('assets/icons/back.svg')),
                  )),
              Expanded(
                  flex: 4,
                  child: Container(
                    // color: Colors.blue,
                    child: TextField(
                      autocorrect: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: HexColor('#E4E4E4'),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                      ),
                    ),
                  )),
              Expanded(
                flex: 1,
                child: Container(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CartPage();
                        }));
                      },
                      // color: Colors.red,
                      child: SvgPicture.asset('assets/icons/cart.svg')),
                ),
              ),
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
          height: 48,
          margin: EdgeInsets.only(right: 44, left: 44),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CartPage();
              }));
            },
            child: Text(
              'Order',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat'),
            ),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.orange),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                  side: BorderSide(color: Colors.orange),
                ))),
          ),
        )
      ])),
    ));
  }
}
