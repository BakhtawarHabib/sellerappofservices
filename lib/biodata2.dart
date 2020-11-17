import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sellerapp/description.dart';
import 'package:sellerapp/phonenumber.dart';
import 'package:sellerapp/register.dart';

class Biodatatwo extends StatefulWidget {
  @override
  _BiodatatwoState createState() => _BiodatatwoState();
}

class _BiodatatwoState extends State<Biodatatwo> {
  File imagefile;
  _openGallery() async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imagefile = picture;
    });
  }

  _openCamera() async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imagefile = picture;
    });
  }

  Future<void> _showdialogbox(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Take a Picture"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  GestureDetector(
                    onTap: () {
                      _openGallery();
                      Navigator.pop(context);
                    },
                    child: Text("Open Galley"),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  GestureDetector(
                    onTap: () {
                      _openCamera();
                      Navigator.pop(context);
                    },
                    child: Text("Open Camera"),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Certificate of Good Conduct",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: textcolor),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(00.0),
          child: new Theme(
              data: new ThemeData(
                primaryColor: Colors.red,
                primaryColorDark: textcolor,
              ),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: textcolor, width: 2),
                      borderRadius: BorderRadius.circular(20.0)),
                  width: 600,
                  height: 400,
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Upload Certificate of Good Conduct",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: textcolor),
                      ),
                      IconButton(
                          alignment: Alignment.bottomLeft,
                          icon: Icon(
                            Icons.camera_enhance,
                            color: textcolor,
                            size: 40,
                          ),
                          onPressed: () {
                            _showdialogbox(context);
                          })
                    ],
                  ))),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: textcolor,
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Phonenumber()));
        },
      ),
    );
  }
}
