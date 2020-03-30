import 'package:crona/second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SlideScreen(),
    );
  }
}

class SlideScreen extends StatefulWidget {
  @override
  _SlideScreenState createState() => _SlideScreenState();
}

class _SlideScreenState extends State<SlideScreen> {
  final MyController = TextEditingController();

  @override
  void dispose() {
    MyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Stack(children: <Widget>[
                  Container(
                      height: 320,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30)),
                          image: DecorationImage(
                              image: AssetImage("images/images.jpeg"),
                              fit: BoxFit.fill))),
                ]),
                SizedBox(height: 10),
                Text(
                  " Am I infected with coronaviurs?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    controller: MyController,
                    cursorColor: Colors.pink,
                    textAlignVertical: TextAlignVertical.top,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      suffixIcon: Icon(
                        Icons.phone_iphone,
                        color: Colors.black,
                      ),
                      labelText: "Phone number",
                      filled: true,
                      fillColor: Color(0xfffce5e8),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.only(right: 20, left: 20),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondScreen()),
                      );
                    },
                    color: Color(0xfff24b5b),
                    textColor: Colors.white,
                    child: Text(
                      "Verification Code",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
