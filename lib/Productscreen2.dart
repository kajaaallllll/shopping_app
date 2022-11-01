import 'package:flutter/material.dart';
import 'package:shopping_app/homescreen.dart';
class ProductScreen2 extends StatefulWidget {

  @override
  State<ProductScreen2> createState() => _ProductScreenState2();
}



class _ProductScreenState2 extends State<ProductScreen2> {
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

              child: Image.asset('images/shoes image.jpeg')),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text('Color : Baby Pink '
                ,style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
              ),
              Text('Material : Leather  '
                ,style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
              ),
              Text('Origin : India '
                ,style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
              ),
              Text('Brand  : Bata '
                ,style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
              ),


            ],
          ),


        ],

      ),

    );
  }
}
