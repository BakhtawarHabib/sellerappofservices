import 'package:flutter/material.dart';
import 'package:sellerapp/login.dart';

import '../getpicture.dart';

class Videographypricing extends StatefulWidget {
  @override
  _VideographypricingState createState() => _VideographypricingState();
}

class _VideographypricingState extends State<Videographypricing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: textcolor,
          title: Text("Videography Pricing"),
        ),
        body: Column(
          children: [
            Container(
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(border: Border.all(color: textcolor)),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: new InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: textcolor)),
                      hintText: "Wedding - KES 70,000",
                      hintStyle: TextStyle(
                          fontSize: 15,
                          color: textcolor,
                          fontWeight: FontWeight.w400),
                      hintMaxLines: 1),
                  keyboardType: TextInputType.number,
                  style: new TextStyle(
                    color: textcolor,
                    fontSize: 18,
                  ),
                )),
            Container(
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(border: Border.all(color: textcolor)),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: new InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: textcolor)),
                      hintText: "Individual-  KES 7,000",
                      hintStyle: TextStyle(
                          fontSize: 15,
                          color: textcolor,
                          fontWeight: FontWeight.w400),
                      hintMaxLines: 1),
                  keyboardType: TextInputType.number,
                  style: new TextStyle(
                    color: textcolor,
                    fontSize: 18,
                  ),
                )),
            Container(
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(border: Border.all(color: textcolor)),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: new InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: textcolor)),
                      hintText: "Commercial - KES 10,000",
                      hintStyle: TextStyle(
                          fontSize: 15,
                          color: textcolor,
                          fontWeight: FontWeight.w400),
                      hintMaxLines: 1),
                  keyboardType: TextInputType.number,
                  style: new TextStyle(
                    color: textcolor,
                    fontSize: 18,
                  ),
                )),
            MaterialButton(
              minWidth: 200,
              height: 50,
              shape: StadiumBorder(),
              color: textcolor,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GetProfilepic()));
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
        ));
  }
}
