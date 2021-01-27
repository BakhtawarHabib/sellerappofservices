import 'package:flutter/material.dart';
import 'package:sellerapp/getpicture.dart';
import 'package:sellerapp/login.dart';

class Heenapricing extends StatefulWidget {
  @override
  _HeenapricingState createState() => _HeenapricingState();
}

class _HeenapricingState extends State<Heenapricing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: textcolor,
          title: Text("Heena Pricing"),
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
                      hintText: "Bridal - KES 6,000",
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
                      hintText: "Hands - KES 800",
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
                      hintText: "Hands & Legs- KES 2,000",
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
