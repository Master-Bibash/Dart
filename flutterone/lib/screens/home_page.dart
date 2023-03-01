import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterone/profile.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("bibash karki"),
                accountEmail: Text("bibashkarki@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/pic.jpg"),
                ),
              ),
              listIte(Icons.home, "Home", Icons.turn_right, (){
                }),
              SizedBox(
                height: 12,
              ),
              listIte(Icons.info, "Profile", Icons.arrow_right,
               (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return profile();
                },),);
               }),
              Spacer(),
              listIte(Icons.logout, "LOGOUT", Icons.arrow_right,(){} ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Dashboard",
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SingleChildScrollView(),

            Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(25)),
                color: Theme.of(context).primaryColor,
              ),
              padding: EdgeInsets.all(17),
              // color: Theme.of(context).primaryColor,
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    // child: Image.asset("assets/images/pic.jpg"),
                    backgroundImage: AssetImage("assets/images/pic.jpg"),
                    backgroundColor: Colors.white,
                    radius: 40,
                  ),
                  const Text(
                    'Bibash karki',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 27),
                  ),
                  Text(
                    "Flutter Developer",
                    style: Theme.of(context).textTheme.headline4,
                  ),

                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  Table(
                    children: [
                      TableRow(children: [
                        Text("21",
                            style: TextStyle(
                                color: Color.fromARGB(255, 240, 239, 238),
                                fontWeight: FontWeight.bold,
                                fontSize: 12)),
                        Text("202022",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Color.fromARGB(255, 222, 222, 219),
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ]),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 25),

            infoLayout(context,
                title: "Contact me", icon: Icons.phone, text: "98765465383"),
            infoLayout(context,
                icon: Icons.mail_lock_outlined, text: "bibkarki1@gmail.com"),
            infoLayout(context,
                title: "Follow me",
                icon: Icons.web,
                text: "http://www.bibashkarki.com.np"),
            infoLayout(context,
                icon: Icons.phone_android_outlined, text: "number")
          ],
        ),
      ),
    );
  }

  Widget infoLayout(context,
      {String? title, required IconData icon, required String text}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Container(
            alignment: Alignment.center,
            width: 90,
            height: 40,
            color: Theme.of(context).primaryColor,
            child: Text(
              title,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        if (title != null)
          SizedBox(
            height: 0,
          ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Icon(icon),
                    backgroundColor: Colors.black,
                  ),
                  SizedBox(
                    width: 29,
                  ),
                  Text(
                    text,
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget listIte(
      IconData icon, String title, IconData icons, Function function) {
    return (Column(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 5,
          child: ListTile(
            onTap:() {function();},
            leading: Icon(icon),
            title: Text(title),
            trailing: Icon(icons),
          ),
        )
      ],
    ));
  }
}
