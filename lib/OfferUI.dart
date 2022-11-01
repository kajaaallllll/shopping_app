import 'package:flutter/material.dart';
import 'package:shopping_app/Productscreen3.dart';
class OfferUI extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 250,
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen3()));
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
                      Image.asset('images/mobile image.jpeg',width: 130,
                      ),
                      Text('Mobile',style: TextStyle(fontSize: 20,color: Colors.black),),
                      SizedBox(height: 10,),
                      Text('Rs 17000',style: TextStyle(fontSize: 20,color: Colors.black),
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
