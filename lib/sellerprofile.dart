import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sellerapp/login.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: textcolor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: new IconThemeData(color: textcolor),
          title: Text(
            "About",
            style: TextStyle(color: textcolor),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 90.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/sellerpic.jpg",
                            ),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),

              // Image.asset("assets/gentle.jpg",
              //     height: 350, width: MediaQuery.of(context).size.width),
              SizedBox(
                height: 20.0,
              ),

              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description:",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      Text(
                        "I m Sentoman Denzier.I am a Designer.I will do your makeup in 200Dollars How are you I m Sentoman Denzier.I am Designer.I will do your makeup in 200Dollars.How are your",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 18),
                      ),
                    ],
                  )),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "About me:",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                child: Text(
                  "Sentoman Denzier",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.call,
                        size: 40.0,
                        color: Colors.green,
                      ),
                      Text(
                        "+9233939339",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 22),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Email:  Sentoman Denzier@gmail.com",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "Pricing",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "100\$- 120\$",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  )),

              Center(
                child: MaterialButton(
                  height: 50,
                  minWidth: 250,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  shape: StadiumBorder(),
                  color: Colors.white,
                  child: Text(
                    "Logout",
                    style: TextStyle(color: textcolor, fontSize: 19),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
