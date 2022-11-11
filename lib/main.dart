import 'package:flutter/material.dart';

import 'package:shopping_app/OfferUI.dart';
import 'package:shopping_app/Productscreen.dart';
import 'package:shopping_app/Productscreen2.dart';
import 'package:shopping_app/Productscreen3.dart';
import 'package:shopping_app/Productscreen4.dart';
import 'package:shopping_app/OfferUI3.dart';
import 'package:shopping_app/OfferUI2.dart';
import 'main_drawer.dart';




void main(){
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex=0;

  final pages =[
    Page1(),
    Page2(),
    Page3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }


  Container  buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,

      decoration: BoxDecoration(
        color: Colors.lightBlue.shade400,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
              Icons.home_filled,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.home_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
              Icons.widgets_rounded,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.widgets_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
              Icons.shopping_cart_rounded,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}


class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue.shade50,
        appBar: AppBar(
          //leading: Icon(Icons.notes,size: 40,),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),

          ],

          backgroundColor: Colors.lightBlue.shade400,
          shadowColor: Colors.transparent,

        ),

        drawer: MainDrawer(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Padding(padding: const EdgeInsets.all(8.0),
              child: Row(children: [

                Text('Welcome..',style: TextStyle(fontSize: 30,color: Colors.black,fontStyle: FontStyle.italic),)
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
                                    Text('Titan Men Black Dial Watch 1701NM01',style: TextStyle(fontSize: 15,color: Colors.black),
                                    ),
                                    SizedBox(height: 10,),
                                    Text('Rs 750',style: TextStyle(fontSize: 15,color: Colors.black),
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
                                    Text('Sparx Womens Sx0167l Running Shoes',style: TextStyle(fontSize: 15,color: Colors.black),
                                    ),
                                    SizedBox(height: 10,),
                                    Text('Rs 1000',style: TextStyle(fontSize: 15,color: Colors.black),
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

                Text('Deal Of The Day',style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic,color: Colors.black),)
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
            ),
            SingleChildScrollView(
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
                                  Text('Titan Watch',style: TextStyle(fontSize: 15,color: Colors.black),
                                  ),
                                  SizedBox(height: 10,),
                                  Text('Rs 750',style: TextStyle(fontSize: 15,color: Colors.black),
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
                                  Text('Shoes',style: TextStyle(fontSize: 15,color: Colors.black),
                                  ),
                                  SizedBox(height: 10,),
                                  Text('Rs 1000',style: TextStyle(fontSize: 15,color: Colors.black),
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
          ] ),
        )

    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
          backgroundColor: Colors.lightBlue.shade400,
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),

          ],


          shadowColor: Colors.transparent,
          title: Text('Categories',style: TextStyle(
              color: Colors.white,fontSize: 25),)
      ),
      body: SafeArea(
        child: Container(
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: GestureDetector(
                        child: Container(decoration: BoxDecoration(color: Colors.brown.shade100 ,
                        borderRadius: BorderRadius.circular(20),),
                          child: Center(child: Text('KIDS WEAR',style: TextStyle(fontSize: 40,
                              fontWeight: FontWeight.bold,fontFamily: 'Pacifico'),)),
                          
                          height: 150,
                          width: 300,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.brown.shade100 ,
                            borderRadius: BorderRadius.circular(20),),
                          child: Center(child: Text(' SAREES',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)),

                          height: 150,
                          width: 300,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.brown.shade100 ,
                          borderRadius: BorderRadius.circular(20),),
                        child: Center(child: Text('MENS WEAR',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)),

                        height: 150,
                        width: 300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.brown.shade100 ,
                          borderRadius: BorderRadius.circular(20),),
                        child: Center(child: Text('JEANS',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)),

                        height: 150,
                        width: 300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.brown.shade100 ,
                          borderRadius: BorderRadius.circular(20),),
                        child: Center(child: Text('FOOTWEAR',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)),

                        height: 150,
                        width: 300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.brown.shade100 ,
                          borderRadius: BorderRadius.circular(20),),
                        child: Center(child: Text('SHOES',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)),

                        height: 150,
                        width: 300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.brown.shade100 ,
                          borderRadius: BorderRadius.circular(20),),
                        child: Center(child: Text('BAGS',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)),

                        height: 150,
                        width: 300,
                      ),
                    )
                  ],

                ),
              )
            ],
          ),
        ),
      )
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue.shade50,
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active)),

          ],
          backgroundColor: Colors.lightBlue.shade400,
          centerTitle: true,
          title: Text('Cart',style: TextStyle(
              color: Colors.white,fontSize: 25
          ),),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(



            ),

            Text('No Items in Cart ',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),)
          ],
        ),

      ),
    );
  }
}
