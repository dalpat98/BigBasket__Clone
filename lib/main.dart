import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

bool _value = true;

BoxDecoration myBoxDecoration(Color color, Color bg) {
  return BoxDecoration(
    color: bg,
    border: Border.all(
      color: color, //                   <--- border color
      width: 2.0,
    ),
  );
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        //leading: IconButton(
        //icon: Icons.arrow_back,
        //onPressed: () {},
        //),
        elevation: 0.7,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.search,
                size: 26.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.share,
                size: 26.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.shopping_cart,
                size: 26.0,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(3),
                  color: Colors.green[300],
                  child: Center(
                    child: Text('Storia'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(3),
                  child: Center(
                    child: Text(
                      'Rose Shake 200 ml - Bottle',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(3),
                  child: Text(
                    'Rs 27',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(1),
                  child: Text(
                    'MRP:',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(1),
                  child: Text(
                    ' Rs 30',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  padding: EdgeInsets.all(0.5),
                  color: Colors.redAccent,
                  child: Text(
                    '10% off',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(2),
              child: Text(
                '(Inclusive of all taxes)',
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(2, 1, 2, 1),
                  color: Colors.green[100],
                  child: Text(
                    '3.5 *',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(1),
                    child: Text(
                      '10 ratings & 1 review  >',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 20,
                    child: Image.network(
                        'https://oslocks.files.wordpress.com/2014/11/vegetarian-symbol.png'),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    height: 300,
                    child: Image.network(
                        'https://www.bigbasket.com/media/uploads/p/l/40191789_3-storia-rose-shake.jpg'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                  decoration: myBoxDecoration(Colors.green, Colors.grey[300]),
                  margin: EdgeInsets.only(right: 8),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://www.bigbasket.com/media/uploads/p/l/40191789_3-storia-rose-shake.jpg',
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration:
                      myBoxDecoration(Colors.grey[300], Colors.grey[300]),
                  margin: EdgeInsets.only(right: 8),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://www.bigbasket.com/media/uploads/p/l/40191789_3-storia-rose-shake.jpg',
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration:
                      myBoxDecoration(Colors.grey[300], Colors.grey[300]),
                  margin: EdgeInsets.only(right: 8),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://www.bigbasket.com/media/uploads/p/l/40191789_3-storia-rose-shake.jpg',
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration:
                      myBoxDecoration(Colors.grey[300], Colors.grey[300]),
                  margin: EdgeInsets.only(right: 8),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://www.bigbasket.com/media/uploads/p/l/40191789_3-storia-rose-shake.jpg',
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    decoration:
                        myBoxDecoration(Colors.grey[300], Colors.grey[300]),
                    margin: EdgeInsets.only(right: 8),
                    height: 42,
                    width: 42,
                    child: Center(child: Text("+2"))),
              ],
            ),
            Divider(
              height: 28,
              color: Colors.grey,
            ),
            Container(
              padding: EdgeInsets.all(3),
              child: Text(
                'Pack Sizes',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              decoration: myBoxDecoration(Colors.green[200], Colors.white),
              margin: EdgeInsets.only(right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(0.5),
                        color: Colors.redAccent,
                        child: Text(
                          '10% off',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(2),
                        child: Text(
                          '200 ml',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Bottle',
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(2),
                        child: Text(
                          'Rs 27',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(1),
                            child: Text(
                              'MRP:',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(1),
                            child: Text(
                              ' Rs 30',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _value = !_value;
                          });
                        },
                        child: Container(
                          height: 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                              color: Colors
                                  .green, //                   <--- border color
                              width: 2.0,
                            ),
                          ),
                          child: _value
                              ? Icon(
                                  Icons.fiber_manual_record,
                                  size: 15.0,
                                  color: Colors.black,
                                )
                              : Icon(
                                  Icons.check_box_outline_blank,
                                  size: 15.0,
                                  color: Colors.white,
                                ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: myBoxDecoration(Colors.green[200], Colors.white),
              margin: EdgeInsets.only(right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(0.5),
                        color: Colors.redAccent,
                        child: Text(
                          'Rs 15 off',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(2),
                        child: Text(
                          '5x200 ml',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          '(Multipack)',
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(2),
                        child: Text(
                          'Rs 135',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(1),
                            child: Text(
                              'MRP:',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(1),
                            child: Text(
                              ' Rs 150',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _value = !_value;
                          });
                        },
                        child: Container(
                          height: 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                              color: Colors
                                  .green, //                   <--- border color
                              width: 2.0,
                            ),
                          ),
                          child: !_value
                              ? Icon(
                                  Icons.fiber_manual_record,
                                  size: 15.0,
                                  color: Colors.black,
                                )
                              : Icon(
                                  Icons.check_box_outline_blank,
                                  size: 15.0,
                                  color: Colors.white,
                                ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.grey[300],
              height: 12,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.local_shipping,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Standard Delivery : Tomorrow Morning"),
                ),
              ],
            ),
            Container(
              color: Colors.grey[300],
              height: 12,
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
