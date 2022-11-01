import 'package:flutter/material.dart';
import 'package:shopping_app/OfferUI.dart';
import 'package:shopping_app/Productscreen.dart';
import 'package:shopping_app/Productscreen2.dart';
import 'package:shopping_app/Productscreen3.dart';
import 'package:shopping_app/Productscreen4.dart';
import 'package:shopping_app/OfferUI3.dart';
import 'package:shopping_app/OfferUI2.dart';
import 'main_drawer.dart';
import 'contact_details.dart';
class HomeScreen
    extends StatefulWidget {


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        //leading: Icon(Icons.notes,size: 40,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),

        ],
        
        backgroundColor: Colors.grey,
        shadowColor: Colors.transparent,

      ),
      drawer: MainDrawer(),
      body: Column(children: [
        Padding(padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          
          Text('Welcome..',style: TextStyle(fontSize: 40,color: Colors.black,fontStyle: FontStyle.italic),)
        ],),),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen()));
                    },
                    child: Stack(
                      children: [
                        Container(width: 200,height: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                        ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Titan Watch',style: TextStyle(fontSize: 20,color: Colors.black),
                                ),
                                SizedBox(height: 10,),
                                Text('Rs 750',style: TextStyle(fontSize: 20,color: Colors.black),
                                ),

                              ],
                            ),
                          ),
                        )
                        ,Positioned(
                          top: 100,
                           left: 20,
                            child:Container(width: 200,height: 200,

                            child: Image.asset('images/watch image.jpeg',),),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen2()));
                    },
                    child: Stack(
                      children: [
                        Container(width: 200,height: 250,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Shoes',style: TextStyle(fontSize: 20,color: Colors.black),
                                ),
                                SizedBox(height: 10,),
                                Text('Rs 1000',style: TextStyle(fontSize: 20,color: Colors.black),
                                ),

                              ],
                            ),
                          ),
                        )
                        ,Positioned(
                          top: 100,
                          left: 20,
                          child:Container(width: 200,height: 150,

                            child: Image.asset('images/shoes image.jpeg',),),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // dicount offer
        SizedBox(height: 30,),
        Padding(padding: const EdgeInsets.all(8.0),
          child: Row(children: [

            Text('Deal Of The Day',style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic,color: Colors.black),)
          ],),),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                OfferUI(),
                OfferUI2(),
                OfferUI3(),
              ],
            ),
          ),
        )
      ],),
    );
  }
}