import 'package:flutter/material.dart';
import 'contact_details.dart';
import 'homescreen.dart';
import 'about_us.dart';
class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child:Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Colors.purple,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(top: 30,bottom: 10),
                      child: CircleAvatar( radius: 80.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/logo.jpeg'),

                      ),
                    ),
                    Text('Online Shopping App',style: TextStyle(fontSize: 20,
                        color: Colors.black87),),
                    Text('Made with Flutter',style: TextStyle(
                        color: Colors.black87),)
                  ],
                ),
              ),
            ),


            ListTile(
              leading: Icon(Icons.list),
              title: Text('Contact Us',
                style: TextStyle(
                    fontSize: 30,

                    color: Colors.black87
                ),),
              onTap:(){  Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contact()));},
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Settings',
                style: TextStyle(
                    fontSize: 30,

                    color: Colors.black87
                ),),
              onTap:(){  Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()));},
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Log Out',
                style: TextStyle(
                    fontSize: 30,

                    color: Colors.black87
                ),),
              onTap:(){},
            ),

          ],
        )
    );

  }}
