import 'package:flutter/material.dart';

import 'package:shopping_app/main.dart';

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
              color: Colors.grey,
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
              leading: Icon(Icons.message_outlined),
              title: Text('FAQs',
                style: TextStyle(
                    fontSize: 20,

                    color: Colors.black87
                ),),
              onTap:(){  },
            ),
            ListTile(
              leading: Icon(Icons.book_rounded),
              title: Text('About Us',
                style: TextStyle(
                    fontSize: 20,

                    color: Colors.black87
                ),),
              onTap:(){  },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Contact Us',
                style: TextStyle(
                    fontSize: 20,

                    color: Colors.black87
                ),),

            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Terms and Conditions',
                style: TextStyle(
                    fontSize: 20,

                    color: Colors.black87
                ),),

            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out',
                style: TextStyle(
                    fontSize: 20,

                    color: Colors.black87
                ),),
              onTap:(){},
            ),

          ],
        )
    );

  }}
