import 'package:crona/detail.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  Widget getsafty(Picture picture) {
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.brown)),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(picture.imageUrl), fit: BoxFit.fill)),
              ),
            ),
            SizedBox(width: 5),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    picture.name,
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    picture.des,
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 2),
                  GestureDetector(
                    onTap: () => debugPrint("0"),
                    child:
                        Text("Read more", style: TextStyle(color: Colors.blue)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 10),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.home,
                  size: 30,
                ),
                Icon(Icons.portrait, size: 30),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                decoration: BoxDecoration(boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.red[100],
                      offset: Offset(1.9, 16),
                      blurRadius: 1),
                  BoxShadow(color: Colors.red[200], offset: Offset(1.9, 8))
                ], color: Colors.red, borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.only(left: 10, right: 10),
                height: 200,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("All you need to\nknow about\ncoronavirus!",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          SizedBox(height: 10),
                          RaisedButton(
                            onPressed: () => debugPrint("p"),
                            child: Text("Know More",
                                style: TextStyle(color: Colors.red)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.brown,
                            image: DecorationImage(
                                image: AssetImage("images/images.jpeg"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 30),
            Container(
              height: 50,
              margin: EdgeInsets.only(right: 10, left: 10),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlatButton(
                    highlightColor: Colors.deepPurple,
                    onPressed: () => debugPrint("p"),
                    child:
                        Text("Safety", style: TextStyle(color: Colors.white)),
                  ),
                  FlatButton(
                      onPressed: () => debugPrint("p"),
                      child: Text(
                        "Sympton",
                        style: TextStyle(color: Colors.white),
                      )),
                  FlatButton(
                      onPressed: () => debugPrint("statement"),
                      child: Text(
                        "News",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
                height: 300,
                child: ListView(
                  // scrollDirection: Axis.vertical,
                  children: picture.asMap().entries.map((MapEntry map) {
                    return getsafty(map.value);
                  }).toList(),
                ))
          ],
        ),
      ]),
    ));
  }
}
