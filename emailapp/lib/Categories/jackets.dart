import 'package:emailapp/homepage.dart';
import 'package:emailapp/cart/mycart.dart';
import 'package:emailapp/product.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../detailpage.dart';

class Jackets extends StatefulWidget {
  const Jackets({super.key});

  @override
  State<Jackets> createState() => _JacketsState();
}

class _JacketsState extends State<Jackets> {

   int _selectedIndex = 0;
    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if (_selectedIndex == 0) {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Homepage()));
      } else if (_selectedIndex == 1) {
        // Action for Settings icon
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Mycart()),
        );
      }
    });}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Jackets"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Jacket", price: 123.4, url: "assets/jacket1.png",desc1: "Here goes the description of the product"))));
                          },  
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/jacket1.png'))),
                            child:const Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Jacket"),
                                ],
                              ),
                            ),
                            // color: Colors.blue,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Jacket", price: 123.4, url: "assets/jacket2.png",desc1: "Here goes the description of the product"))));
                          }, 
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/jacket2.png'))),
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Jacket"),
                                ],
                              ),
                            ),
                            // color: Colors.blue,
                          ),
                        ),             
                      ],
                    ),
                    // SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Jacket", price: 123.4, url: "assets/jacket3.png",desc1: "Here goes the description of the product"))));
                          }, 
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/jacket3.png'))),
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Jacket"),
                                ],
                              ),
                            ),
                            // color: Colors.blue,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Jacket", price: 123.4, url: "assets/jacket4.png",desc1: "Here goes the description of the product"))));
                          }, 
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/jacket4.png'))),
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Jacket"),
                                ],
                              ),
                            ),  
                            // color: Colors.blue,
                          ),
                        ),             
                      ],
                    ),
                                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Jacket", price: 123.4, url: "assets/jacket1.png",desc1: "Here goes the description of the product"))));
                          }, 
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/jacket1.png'))),
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Jacket"),
                                ],
                              ),
                            ),                       
                            // color: Colors.blue,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Jacket", price: 123.4, url: "assets/jacket2.png",desc1: "Here goes the description of the product"))));
                          }, 
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/jacket2.png'))),
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Jacket"),
                                ],
                              ),
                            ),
                            // color: Colors.blue,
                          ),
                        ),             
                      ],
                    ),          
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Jacket", price: 123.4, url: "assets/jacket3.png",desc1: "Here goes the description of the product"))));
                          }, 
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/jacket3.png'))),
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Jacket"),
                                ],
                              ),
                            ),                        
                            
                            // color: Colors.blue,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Jacket", price: 123.4, url: "assets/jacket4.png",desc1: "Here goes the description of the product"))));
                          }, 
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/jacket4.png')),),
                            child:const Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Jacket"),
                                ],
                              ),
                            ),                        
                            // color: Colors.blue,
                          ),
                        ),             
                      ],
                    ), 
          ],
        ),
      ),
    bottomNavigationBar: BottomNavigationBar(items:const <BottomNavigationBarItem>[BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),label: "Cart")
      ],        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,),  
    );
  }
}