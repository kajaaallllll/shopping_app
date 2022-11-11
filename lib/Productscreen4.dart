import 'package:flutter/material.dart';
import 'package:shopping_app/main.dart';
class ProductScreen4 extends StatefulWidget {

  @override
  State<ProductScreen4> createState() => _ProductScreenState4();
}



class _ProductScreenState4 extends State<ProductScreen4> {
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

              child: Image.asset('images/jeans image.jpeg')),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text('Blue light wash jeans, mildly distressed, light fade, and has a zip fly closure '
                ,style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic),
              ),
              Text('Blue light wash jeans, mildly distressed, light fade, and has a zip fly closures'
                ,style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic),
              ),



            ],
          ),


        ],

      ),

    );
  }
}
