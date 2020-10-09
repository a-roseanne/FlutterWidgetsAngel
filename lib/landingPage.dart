import 'package:flutter/material.dart';
import 'package:flutterwidgets_angel/bookingPage.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

bool pressed = false;

class _LandingPageState extends State<LandingPage> {
  @override

  //List View Content
  List<Widget> contentList = [
    Text(
      "Unrivalled luxury, stunning white-sand beaches and an amazing underwater world make Maldives an obvious choice for a true holiday of a lifetime.",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 18,
          fontFamily: "Comfortaa-VariableFont_wght",
          color: Colors.white),
    ),
    Text("Unbelievable Beaches",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.white,
          fontFamily: "KaushanScript-Regular",
        )),
    Text(
      "Maldives is home to perhaps the best beaches in the world; they’re on almost every one of the country’s nearly 1200 islands and are so consistently perfect that it’s hard not to become blasé about them.",
      textAlign: TextAlign.justify,
      style: TextStyle(
          fontSize: 18,
          fontFamily: "Comfortaa-VariableFont_wght",
          color: Colors.white),
    ),
    Text("Resorts for Everyone",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: "KaushanScript-Regular",
            color: Colors.white)),
    Text(
      "Every resort in Maldives is its own private island, and with over 100 to choose from the only problem is selecting where you want to stay.",
      textAlign: TextAlign.justify,
      style: TextStyle(
          fontSize: 18,
          fontFamily: "Comfortaa-VariableFont_wght",
          color: Colors.white),
    ),
    Text("Underwater World",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: "KaushanScript-Regular",
            color: Colors.white)),
    Text(
      "With some of the best diving and snorkelling in the world, the clear waters of Maldives are a magnet for anyone with an interest in marine life.",
      textAlign: TextAlign.justify,
      style: TextStyle(
          fontSize: 18,
          fontFamily: "Comfortaa-VariableFont_wght",
          color: Colors.white),
    ),
    Text("Independent Travel",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: "KaushanScript-Regular",
            color: Colors.white)),
    Text(
      "Maldives has undergone seismic change in the past 10 years, since inhabited islands have been opened to tourism and locals permitted to build their own guesthouses.",
      textAlign: TextAlign.justify,
      style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontFamily: "Comfortaa-VariableFont_wght"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Visit Maldives",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Comfortaa-VariableFont_wght")),
          backgroundColor: Colors.deepPurple[400],
        ),
        body: Stack(
          children: <Widget>[
            Container(
                child: Column(
                  children: <Widget>[
                    //banner
                    Flexible(
                        flex: 2,
                        child: Container(
                            child: Image(
                          image: AssetImage("assets/bg.jpg"),
                          fit: BoxFit.cover,
                        ))),

                    //img
                    Flexible(
                      flex: 1,
                      child: Container(
                        decoration:
                            BoxDecoration(color: Colors.blueAccent[800]),
                        child: Row(
                          children: <Widget>[
                            Flexible(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/a.jpg')),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                  margin: EdgeInsets.all(5),
                                )),
                            Flexible(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/b.jpg')),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                  margin: EdgeInsets.all(5),
                                )),
                            Flexible(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/c.jpg')),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                  margin: EdgeInsets.all(5),
                                )),
                            Flexible(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xff7c94b6),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage('assets/d.jpg')),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: <Color>[
                                            Colors.blue[600],
                                            Colors.lightBlueAccent
                                          ])),
                                  margin: EdgeInsets.all(5),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Text("Welcome to Maldives!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          fontFamily: "KaushanScript-Regular",
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.lightBlue,
                          decorationThickness: 2,
                          color: Colors.white,
                          decorationStyle: TextDecorationStyle.solid,
                        )),
                    //listview
                    Flexible(
                        flex: 4,
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: ListView(children: contentList),
                        )),
                  ],
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: <Color>[Colors.blue[700], Colors.pink[400]]))),
            Align(
              alignment: Alignment(0.94, -0.94),
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (pressed) {
                      pressed = !pressed;
                    } else {
                      pressed = !pressed;
                    }
                  });
                },
                child: Icon(
                  Icons.flight,
                  size: 32,
                  color: pressed ? Colors.pink : Colors.grey,
                ),
                splashColor: Colors.pink[100],
                backgroundColor: Colors.purple[50],
              ),
            ),
            Align(
                alignment: Alignment(0.9, 0.98),
                child: Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            colors: [Colors.purple, Colors.blue[300]],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft)),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BookingPage();
                          }));
                        },
                        splashColor: Colors.pink,
                        child: Center(
                            child: Text(
                          "Book Now",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ),
                )),
          ],
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
        // floatingActionButton: Container(),
      ),
    );
  }
}
