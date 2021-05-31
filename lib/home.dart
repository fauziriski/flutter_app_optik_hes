import 'package:flutter/material.dart';
import 'package:optik_hes/detail.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

import 'cart.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        body: Center(
          child: ListView(
            children: <Widget>[
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
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
                margin: EdgeInsets.only(right: 24, left: 24, bottom: 20),
                child: Row(children: [
                  Container(
                    child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailPage();
                          }));
                        },
                        child: Container(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            image: AssetImage('assets/images/big_burger.png'),
                            height: 140,
                            width: 162,
                          ),
                        ))),
                  ),
                  Container(
                    height: 140,
                    width: 196,
                    padding: EdgeInsets.only(top: 26, bottom: 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 140,
                              margin: EdgeInsets.only(top: 2, left: 2),
                              child: Text(
                                'BIG Burger Combo 1',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700),
                              ),
                            )),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 104,
                              child: Text(
                                'Rp. 16.500',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700),
                              ),
                            )),
                      ],
                    ),
                  )
                ]),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: HexColor('##C0C0C0').withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 24, left: 24, bottom: 20),
                child: Row(children: [
                  Container(
                    child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailPage();
                          }));
                        },
                        child: Container(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            image: AssetImage(
                                'assets/images/beef_cheese_burger.png'),
                            height: 140,
                            width: 162,
                          ),
                        ))),
                  ),
                  Container(
                    height: 140,
                    width: 196,
                    padding: EdgeInsets.only(top: 26, bottom: 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 140,
                              margin: EdgeInsets.only(top: 2, left: 2),
                              child: Text(
                                'Beef Cheese Burger',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700),
                              ),
                            )),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 104,
                              child: Text(
                                'Rp. 16.500',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700),
                              ),
                            )),
                      ],
                    ),
                  )
                ]),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: HexColor('##C0C0C0').withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 24, left: 24, bottom: 20),
                child: Row(children: [
                  Container(
                    child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailPage();
                          }));
                        },
                        child: Container(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            image:
                                AssetImage('assets/images/iced_cappuchino.png'),
                            height: 140,
                            width: 162,
                          ),
                        ))),
                  ),
                  Container(
                    height: 140,
                    width: 196,
                    padding: EdgeInsets.only(top: 26, bottom: 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 140,
                              margin: EdgeInsets.only(top: 2, left: 2),
                              child: Text(
                                'Iced Cappuchino',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700),
                              ),
                            )),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 104,
                              child: Text(
                                'Rp. 6.500',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700),
                              ),
                            )),
                      ],
                    ),
                  )
                ]),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: HexColor('##C0C0C0').withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
