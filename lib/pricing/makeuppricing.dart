import 'package:flutter/material.dart';
import 'package:sellerapp/getpicture.dart';
import 'package:sellerapp/login.dart';

class Makeuppricing extends StatefulWidget {
  @override
  _MakeuppricingState createState() => _MakeuppricingState();
}

class _MakeuppricingState extends State<Makeuppricing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: textcolor,
          title: Text("Makeup Pricing"),
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
                      hintText:
                          "Bridal Makeup - Price will be a maximum of \nKES 15,000",
                      hintStyle: TextStyle(
                          fontSize: 15,
                          color: textcolor,
                          fontWeight: FontWeight.w400),
                      hintMaxLines: 2),
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
                      hintText: "Bridesmaid Makeup - Price will be KES 2,000",
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
                      hintText: "Simple Makeup with Lashes- KES 1,500",
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
                      hintText: "Simple Makeup without Lashes- KES 1,000",
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
