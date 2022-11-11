import 'package:flutter/material.dart';
import 'package:shopping_app/Productscreen5.dart';
class OfferUI3 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 250,
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen5()));
          },
          child: Stack(
            children: [
              Positioned(
                top:30,

                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(20) ,
                      color: Colors.white
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Image.asset('images/neckband image.jpeg',width: 130,
                    ),
                    SizedBox(height: 10,),
                    Text('One Plus Neckband ',style: TextStyle(fontSize: 15,color: Colors.black),),

                    Text('Rs 1700',style: TextStyle(fontSize: 15,color: Colors.black),
                    ),


                  ],
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }
}
