import 'package:flutter/material.dart';
import 'package:shopping_app/main.dart';
class ProductScreen2 extends StatefulWidget {

  @override
  State<ProductScreen2> createState() => _ProductScreenState2();
}



class _ProductScreenState2 extends State<ProductScreen2> {
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

              child: Image.asset('images/shoes image.jpeg')),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text('Closure: Lace-Up '
                ,style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic),
              ),
              Text('Shoe Width: Medium '
                ,style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic),
              ),
              Text('THE BRAND: Sparx is all about passion, challenges and zeal of people who like to live on-the-edge, have a dare-devil spirit and do things differently. '
                ,style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic),
              ),



            ],
          ),


        ],

      ),

    );
  }
}
