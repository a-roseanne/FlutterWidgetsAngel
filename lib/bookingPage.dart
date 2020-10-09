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
  String name, email, phone, address;
  TextEditingController nameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController phoneC = TextEditingController();
  TextEditingController addressC = TextEditingController();

  failedDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Sorry, Booking Failed"),
            content: Text("Please fill all required field! "),
            actions: [
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Alright"),
              )
            ],
          );
        });
  }

  successDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Booking Confirmation"),
            content: Text(
                " Name : $name \n Email: $email \n Phone : $phone \n Address : $address"),
            actions: [
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: Text("OK"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Text("Booking Form",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Comfortaa-VariableFont_wght")),
            backgroundColor: Colors.deepPurple[400],
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: <Color>[Colors.blue[700], Colors.pink[400]])),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(25),
                  child: TextFormField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      fillColor: Colors.transparent,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink[50])),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: Icon(Icons.person, color: Colors.white),
                      labelText: "Full Name",
                      labelStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                      hintText: "John Doe",
                      hintStyle: TextStyle(color: Colors.blueGrey[50]),
                    ),
                    controller: nameC,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: TextFormField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      fillColor: Colors.transparent,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink[50])),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: Icon(Icons.mail, color: Colors.white),
                      labelText: "E - mail",
                      labelStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                      hintText: "johndoe@mail.com",
                      hintStyle: TextStyle(color: Colors.blueGrey[50]),
                    ),
                    controller: emailC,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: TextFormField(
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.numberWithOptions(),
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      fillColor: Colors.transparent,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink[50])),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: Icon(Icons.call, color: Colors.white),
                      labelText: "Phone Number",
                      labelStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                      hintText: "081 123 456 789",
                      hintStyle: TextStyle(color: Colors.blueGrey[50]),
                    ),
                    controller: phoneC,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: TextFormField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      fillColor: Colors.transparent,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink[50])),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      prefixIcon: Icon(Icons.home, color: Colors.white),
                      labelText: "Address",
                      labelStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                      hintText: "Jl. Jakarta 22",
                      hintStyle: TextStyle(color: Colors.blueGrey[50]),
                    ),
                    controller: addressC,
                  ),
                ),
                Center(
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
                          if (nameC.text.isEmpty ||
                              phoneC.text.isEmpty ||
                              emailC.text.isEmpty ||
                              addressC.text.isEmpty) {
                            failedDialog(context);
                          } else {
                            setState(() {
                              address = addressC.text;
                              phone = phoneC.text;
                              email = emailC.text;
                              name = nameC.text;
                            });
                            successDialog(context);
                            nameC.clear();
                            phoneC.clear();
                            emailC.clear();
                            addressC.clear();
                          }
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
                ))
              ],
            ),
          ),
        ));
  }
}
