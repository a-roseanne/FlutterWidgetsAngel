import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> contentList = [
    Text(
      "Unrivalled luxury, stunning white-sand beaches and an amazing underwater world make Maldives an obvious choice for a true holiday of a lifetime.",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 18, fontFamily: "Comfortaa-VariableFont_wght"),
    ),
    Text("Unbelievable Beaches",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          fontFamily: "KaushanScript-Regular",
        )),
    Text(
      "Maldives is home to perhaps the best beaches in the world; they’re on almost every one of the country’s nearly 1200 islands and are so consistently perfect that it’s hard not to become blasé about them.",
      textAlign: TextAlign.justify,
      style: TextStyle(fontSize: 18, fontFamily: "Comfortaa-VariableFont_wght"),
    ),
    Text("Resorts for Everyone",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          fontFamily: "KaushanScript-Regular",
        )),
    Text(
      "Every resort in Maldives is its own private island, and with over 100 to choose from the only problem is selecting where you want to stay.",
      textAlign: TextAlign.justify,
      style: TextStyle(fontSize: 18, fontFamily: "Comfortaa-VariableFont_wght"),
    ),
    Text("Underwater World",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          fontFamily: "KaushanScript-Regular",
        )),
    Text(
      "With some of the best diving and snorkelling in the world, the clear waters of Maldives are a magnet for anyone with an interest in marine life.",
      textAlign: TextAlign.justify,
      style: TextStyle(fontSize: 18, fontFamily: "Comfortaa-VariableFont_wght"),
    ),
    Text("Independent Travel",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          fontFamily: "KaushanScript-Regular",
        )),
    Text(
      "Maldives has undergone seismic change in the past 10 years, since inhabited islands have been opened to tourism and locals permitted to build their own guesthouses.",
      textAlign: TextAlign.justify,
      style: TextStyle(fontSize: 18, fontFamily: "Comfortaa-VariableFont_wght"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Visit Maldives"),
        ),
        // body: Column(
        //   children: <Widget>[
        //     Text("A"),
        //     Text("A"),
        //     Text("A"),
        //     Row(
        //       children: <Widget>[
        //         Text("A"),
        //         Text("A"),
        //         Text("A"),
        //       ],
        //     ),
        //     ListView(
        //       children: contentList,
        //     ),
        //     RaisedButton(child: Text("Fav"), onPressed: null)
        //   ],
        // ),

        body: ListView(children: contentList),

        // body: Container(
        //   child: Container(
        //       decoration: BoxDecoration(
        //           gradient: LinearGradient(
        //               begin: Alignment.topRight,
        //               end: Alignment.bottomLeft,
        //               colors: <Color>[
        //             Colors.lightBlue[800],
        //             Colors.lightBlueAccent
        //           ])),
        //       child: Text(
        //         "Welcome to Maldives!",
        //         style: TextStyle(
        //           fontSize: 50,
        //           fontFamily: "BebasNeue-Regular",
        //           decoration: TextDecoration.underline,
        //           decorationColor: Colors.blue[50],
        //           decorationThickness: 2,
        //           decorationStyle: TextDecorationStyle.solid,
        //         ),
        //       )),
      ),
    );
  }
}
