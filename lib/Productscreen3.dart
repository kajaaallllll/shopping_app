import 'package:flutter/material.dart';
import 'package:shopping_app/main.dart';
class ProductScreen3 extends StatefulWidget {

  @override
  State<ProductScreen3> createState() => _ProductScreenState3();
}



class _ProductScreenState3 extends State<ProductScreen3> {
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
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Page1()));
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
              Text('Brand:Oppo '
                ,style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic),
              ),
              Text(' Memory, Storage & SIM: 6GB RAM | 128GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G).| Color OS 11.1 based on Android v11.0 operating system.'
                ,style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic),
              ),



            ],
          ),


        ],

      ),

    );
  }
}
