import 'package:flutter/material.dart';
import 'package:optik_hes/cart.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

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
        home: SafeArea(
      child: Scaffold(
          body: ListView(
        children: [
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
            // color: Colors.green,
            height: 340,
            child: Image(
                image: AssetImage('assets/images/detail_cheese.png'),
                height: 340,
                fit: BoxFit.fill),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 208,
                    child: Text(
                      'Beef Cheese Burger',
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    width: 302,
                    margin: EdgeInsets.only(top: 9),
                    child: Text(
                      'Chees burger with big size beef',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(height: 24),
                  Container(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Rp 16.500',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ]),
          ),
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
                'add to cart',
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
        ],
      )),
    ));
  }
}
