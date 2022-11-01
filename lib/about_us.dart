import 'package:flutter/material.dart';
import 'package:shopping_app/main_drawer.dart';
void main() {
  runApp( About());
}
class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Help and Settings',
            style: TextStyle(
              color: Colors.black87,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),),
          backgroundColor: Colors.black12,


        ),

        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Container(
              color: Colors.yellow,
              width: 500.0,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Your Account ',
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),



                  Text(''
                      'Customer Service',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,

                      fontSize: 30.0,

                    ),),


                  Text('Sign Out',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,

                      fontSize: 30.0,

                    ),),




                ],
              ),


            ),
          ),),


      );
  }

}