import 'package:flutter/material.dart';
import 'package:shopping_app/homescreen.dart';
class ProductScreen3 extends StatefulWidget {

  @override
  State<ProductScreen3> createState() => _ProductScreenState3();
}



class _ProductScreenState3 extends State<ProductScreen3> {
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

              child: Image.asset('images/mobile image.jpeg')),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text('Color : Space Black '
                ,style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
              ),
              Text(' 8GB RAM,128GB Storage'
                ,style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
              ),
              Text('33 W Charger Included '
                ,style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
              ),
              Text('Company : OPPO'
                ,style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
              ),


            ],
          ),


        ],

      ),

    );
  }
}
