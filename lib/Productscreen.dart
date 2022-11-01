import 'package:flutter/material.dart';
import 'package:shopping_app/homescreen.dart';
class ProductScreen extends StatefulWidget {

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
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

                 child: Image.asset('images/watch image.jpeg')),
          Column(
mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text('Color : Golden Brown '
                  ,style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
              ),

              Text('Brand  : Titan '
                ,style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
              ),
              Text('Cost : Rs. 750 '
                ,style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
              ),
              Text('Leather Strap Analog Watch '
                ,style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
              ),

            ],
          ),

          
        ],

      ),

    );
  }
}
