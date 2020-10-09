import 'package:flutter/material.dart';
import 'package:flutterwidgets_angel/landingPage.dart';

void main() {
  runApp(BookingPage());
}

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Form",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Comfortaa-VariableFont_wght")),
        backgroundColor: Colors.deepPurple[400],
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Back"),
            shape: StadiumBorder(),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
