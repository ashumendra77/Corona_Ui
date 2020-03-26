import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  Widget getsafty() {
    return Container(
      height: 100,
      color: Colors.brown,
      child: Center(child: Text("safety aayega ki niii")),
    );
  }

  Widget getsymptom(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.brown,
      child: Center(child: Text("symptom aayega ki niii")),
    );
  }

  Widget getnews(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.brown,
      child: Center(child: Text("news aayega ki niii")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   backgroundColor: Colors.transparent,
        //   // title: Text("SecondScreen"),
        // ),
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.home,
                size: 30,
              ),
              Icon(Icons.portrait, size: 30)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 10.0, left: 10),
                    child: Container(
                      padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                      height: 200,
                      width: 340,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("All you need to\nknow about\ncoronavirus!",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            SizedBox(height: 10),
                            RaisedButton(
                              onPressed: () => debugPrint("press"),
                              child: Text("Know More",
                                  style: TextStyle(color: Colors.red)),
                            )
                          ]),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                          image: AssetImage("images/pic3.jpg"),
                          alignment: Alignment(1.5, 2),
                          //  centerSlice: Rect.fromCenter(height:5,width:5)
                        ),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.red[200],
                              offset: Offset(0, 8),
                              blurRadius: 2)
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            height: 50,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                    onPressed: null,
                    hoverColor: Colors.brown,
                    child: Text("Safety")),
                FlatButton(
                    onPressed: () => debugPrint("p"), child: Text("Symptom")),
                FlatButton(
                    onPressed: () => debugPrint("p"), child: Text("News"))
                // Text("Safety"),
                // Text("Symptom"),
                // Text("News")
              ],
            ),
          )
        ],
      ),
    ));
  }
}
