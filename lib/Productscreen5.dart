import 'package:flutter/material.dart';
import 'package:shopping_app/homescreen.dart';
class ProductScreen5 extends StatefulWidget {

  @override
  State<ProductScreen5> createState() => _ProductScreenState5();
}



class _ProductScreenState5 extends State<ProductScreen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          AppBar(
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 30,),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon( Icons.shopping_cart,color: Colors.white,size: 30,))
            ],
          ),
          Container(
              height: 400,
              width: 600,

              child: Image.asset('images/neckband image.jpeg')),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text('OnePlus Bullets Z2'
                ,style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
              ),
              Text('Bluetooth Wireless '
                ,style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
              ),
              Text('in Earphones with Mic'
                ,style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
              ),
              Text('Color : Acoustic Red '
                ,style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
              ),


            ],
          ),


        ],

      ),

    );
  }
}