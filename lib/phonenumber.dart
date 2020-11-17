import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sellerapp/description.dart';

import 'package:sellerapp/register.dart';

class Phonenumber extends StatefulWidget {
  @override
  _PhonenumberState createState() => _PhonenumberState();
}

class _PhonenumberState extends State<Phonenumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Enter your KRA code",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: textcolor),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Text(
            "Please Enter your KRA Pincode",
            style: TextStyle(
                color: textcolor, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: textcolor)),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: new InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: textcolor)),
                      hintText: "Add KRA Pincode",
                      hintStyle: TextStyle(
                          color: textcolor, fontWeight: FontWeight.bold),
                    ),
                    keyboardType: TextInputType.phone,
                    style: new TextStyle(
                      color: textcolor,
                      fontFamily: "Poppins",
                    ),
                  ))),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: textcolor,
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Description()));
        },
      ),
    );
  }
}
