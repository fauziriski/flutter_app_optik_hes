import 'package:flutter/material.dart';
import 'package:optik_hes/detail.dart';

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
      home: Scaffold(
        // appBar: AppBar(title: Text('f')),
        body: Center(
          child: Column(
            children: <Widget>[
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
                margin: EdgeInsets.only(right: 24, left: 24),
                // padding: EdgeInsets.only(righ),
                child: Row(children: [
                  InkWell(
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
                  Column(
                    children: [
                      Text(
                        'BIG Burger Combo 1',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Rp. 16.500',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  )
                ]),
                decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Container(
                margin: EdgeInsets.only(right: 24, left: 24),
                // padding: EdgeInsets.only(righ),
                child: Row(children: [
                  Image(
                    image: AssetImage('assets/images/beef_cheese_burger.png'),
                    height: 140,
                    width: 162,
                  ),
                  Column(
                    children: [
                      Text(
                        'Beef Cheese Burger',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Rp. 16.500',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  )
                ]),
                decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Container(
                margin: EdgeInsets.only(right: 24, left: 24),
                // padding: EdgeInsets.only(righ),
                child: Row(children: [
                  Image(
                    image: AssetImage('assets/images/iced_cappuchino.png'),
                    height: 140,
                    width: 162,
                  ),
                  Column(
                    children: [
                      Text(
                        'Iced Caphuchino',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Rp. 6.500',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  )
                ]),
                decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
