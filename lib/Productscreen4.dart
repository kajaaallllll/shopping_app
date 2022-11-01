import 'package:flutter/material.dart';
import 'package:shopping_app/homescreen.dart';
class ProductScreen4 extends StatefulWidget {

  @override
  State<ProductScreen4> createState() => _ProductScreenState4();
}



class _ProductScreenState4 extends State<ProductScreen4> {
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

              child: Image.asset('images/jeans image.jpeg')),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text('Girls Slim Fit Jeans '
                ,style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
              ),
              Text('Joggers'
                ,style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
              ),
              Text('Set Of 3 '
                ,style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
              ),
              Text('Material Type: Coton '
                ,style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
              ),


            ],
          ),


        ],

      ),

    );
  }
}
