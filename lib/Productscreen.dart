import 'package:flutter/material.dart';
import 'package:shopping_app/main.dart';
class ProductScreen extends StatefulWidget {

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade200,
      body: Column(
        children: [
          AppBar(
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 30,),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page1()));
                },
            ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon( Icons.shopping_cart,color: Colors.white,size: 30,))
            ],
          ),
             Container(
               height: 400,
                 width: 600,

                 child: Image.asset('images/watch image.jpeg')),
          Column(
mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text('Color : Golden Brown '
                  ,style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic),
              ),

              Text('Brand  : Titan '
                ,style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic),
              ),
              Text('Cost : Rs. 750 '
                ,style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic),
              ),
              Text('Case style: Analogue watch, has a circular case with a fixed bezel,nbsp;a stainless steel back '
                ,style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic),
              ),

            ],
          ),

          
        ],

      ),

    );
  }
}
