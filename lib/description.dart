import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sellerapp/login.dart';

class Description extends StatefulWidget {
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  Future<void> _showdialogbox(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Column(
                children: [
                  Text(
                    "NOTE",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Thank you for choosing NisahServices.\nAfter reviewing your provided info,We will let you know about approval using email or contact number \n(with in 24 hours)",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: textcolor,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              content: MaterialButton(
                color: textcolor,
                minWidth: 250,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text(
                  "OK",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Enter your description&pricing",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: textcolor,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Add Description for your profile",
                style: TextStyle(
                    color: textcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(border: Border.all(color: textcolor)),
                child: new ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 300.0,
                  ),
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 5,
                    textAlign: TextAlign.center,
                    decoration: new InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: textcolor)),
                      hintText: "Add your Description",
                      hintStyle: TextStyle(
                          color: textcolor, fontWeight: FontWeight.bold),
                    ),
                    keyboardType: TextInputType.multiline,
                    style: new TextStyle(
                      color: textcolor,
                      fontSize: 18,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              MaterialButton(
                minWidth: 200,
                height: 50,
                shape: StadiumBorder(),
                color: textcolor,
                onPressed: () {
                  _showdialogbox(context);
                },
                child: Text(
                  "Submit",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
