import 'package:flutter/material.dart';
import 'package:shopping_app/main.dart';
class ProductScreen5 extends StatefulWidget {

  @override
  State<ProductScreen5> createState() => _ProductScreenState5();
}



class _ProductScreenState5 extends State<ProductScreen5> {
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

              child: Image.asset('images/neckband image.jpeg')),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text('Oneplus Bullets Z2 Bluetooth Wireless in Ear Earphones with Mic, Bombastic Bass - 12.4 Mm Drivers, 10 Mins Charge - 20 Hrs Music, 30 Hrs Battery Life (Acoustic Red)'
                ,style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic),
              ),



            ],
          ),


        ],

      ),

    );
  }
}