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
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                // SizedBox(height:10),
                Stack(children: <Widget>[
                  Container(
                      height: 370,
                      width: double.infinity,
                      // width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30)),
                          image: DecorationImage(
                              image: AssetImage("images/pic1.jpg"),
                              fit: BoxFit.fill))),
                  Text(
                    "COVID-19",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  )
                ]),
                SizedBox(height: 10),
                Text(
                  " Am I infected with coronaviurs?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: MyController,
                    cursorColor: Colors.pink,
                    textAlignVertical: TextAlignVertical.top,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),

                      suffixIcon: Icon(Icons.phone_iphone,color: Colors.black,),
                      labelText: "Phone number",
                      // icon: Icon(),
                      filled: true,
                      fillColor: Color(0xfffce5e8),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                RaisedButton(
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
