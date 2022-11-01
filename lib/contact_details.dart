import 'package:flutter/material.dart';
import 'package:shopping_app/main_drawer.dart';
void main() {
  runApp( Contact());
}
class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Contact Us',
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
                  Text('Email',
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),



                  Text(''
                      'onlineshop@gmail.com',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,

                      fontSize: 30.0,

                    ),),
                  Icon(Icons.filter_list_sharp,

                    color: Colors.black87,
                    size: 30.0,
                  ),


                  Text('Customer Care No.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,

                      fontSize: 30.0,

                    ),),


                  Text('7388872979', style: TextStyle(
                    fontWeight: FontWeight.bold,

                    fontSize: 30.0,

                  ),),
                  Icon(Icons.filter_list_sharp,

                    color: Colors.black87,
                    size: 30.0,
                  ),

                  Text('Address', style: TextStyle(
                    fontWeight: FontWeight.bold,

                    fontSize: 30.0,

                  ),),

                  Text('Near Moti Jheel,Kanpur', style: TextStyle(
                    fontWeight: FontWeight.bold,

                    fontSize: 30.0,

                  ),),
                  Icon(Icons.filter_list_sharp,

                    color: Colors.black87,
                    size: 30.0,
                  ),

                  Text('Made In India', style: TextStyle(
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