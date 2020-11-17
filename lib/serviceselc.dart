import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sellerapp/Biodata.dart';
import 'package:sellerapp/getpicture.dart';
import 'package:sellerapp/register.dart';

class Serviceselection extends StatefulWidget {
  @override
  _ServiceselectionState createState() => _ServiceselectionState();
}

class _ServiceselectionState extends State<Serviceselection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select your service"),
        backgroundColor: textcolor,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Select any Service",
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: textcolor),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              primary: true,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GetProfilepic()));
                  },
                  child: Card(
                    color: textcolor,
                    margin: EdgeInsets.all(30.0),
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Center(
                        child: Text(
                      "Makeup",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Biodata()));
                    },
                    child: Card(
                      color: textcolor,
                      margin: EdgeInsets.all(30.0),
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                          child: Text(
                        "Hair Dressing",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                        textAlign: TextAlign.center,
                      )),
                    )),
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Biodata()));
                    },
                    child: Card(
                      color: textcolor,
                      margin: EdgeInsets.all(30.0),
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                          child: Text(
                        "Massage service",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                        textAlign: TextAlign.center,
                      )),
                    )),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Biodata()));
                  },
                  child: Card(
                      color: textcolor,
                      margin: EdgeInsets.all(30.0),
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                          child: Text(
                        "Heena",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                        textAlign: TextAlign.center,
                      ))),
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Biodata()));
                    },
                    child: Card(
                      color: textcolor,
                      margin: EdgeInsets.all(30.0),
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                          child: Text(
                        "Pedicure & Manicure",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                        textAlign: TextAlign.center,
                      )),
                    )),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Biodata()));
                  },
                  child: Card(
                    color: textcolor,
                    margin: EdgeInsets.all(30.0),
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Center(
                        child: Text(
                      "Photography",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
