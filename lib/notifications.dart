import 'package:flutter/material.dart';
import 'package:sellerapp/customerrequest.dart';
import 'package:sellerapp/register.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: textcolor,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Notifications",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          backgroundColor: textcolor,
          elevation: 0.0,
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CustomerRequest()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                        color: Colors.pink[50],
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(color: Colors.red, width: 1)),
                    child: ListTile(
                      leading: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new AssetImage("assets/female.png"))),
                      ),
                      subtitle: Text("2days ago"),
                      trailing: IconButton(
                          icon: Icon(Icons.chevron_right), onPressed: () {}),
                      title: Text(
                        "Sentoria sent your service request",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ),
                )));
  }
}
