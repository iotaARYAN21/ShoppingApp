import 'package:emailapp/detailpage.dart';
import 'package:emailapp/homepage.dart';
import 'package:emailapp/cart/mycart.dart';
import 'package:emailapp/product.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Toys extends StatefulWidget {
  const Toys({super.key});

  @override
  State<Toys> createState() => _ToysState();
}

class _ToysState extends State<Toys> {

   int _selectedIndex = 0;
    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if (_selectedIndex == 0) {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
      } else if (_selectedIndex == 1) {
        // Action for Settings icon
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Mycart()),
        );
      }
    });}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Toys"),
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
                            Navigator.push(context, MaterialPageRoute( builder: (context)=>Detailpage(product: Product(name: "Toy", price: 123.4, url: "assets/toy1.png",desc1: "Here goes the description of the product", id: ''))));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/toy1.png'))),
                            child:const Align(
                              alignment: Alignment.bottomCenter,
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Toy"),
                                ],
                              ),
                            ),
                            // color: Colors.blue,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Toy", price: 123.4, url: "assets/toy2.png",desc1: "Here goes the description of the product", id: ''))));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/toy2.png'))),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Toy"),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Toy", price: 123.4, url: "assets/toy3.png",desc1: "Here goes the description of the product", id: ''))));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/toy3.png'))),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Toy"),
                                ],
                              ),
                            ),
                            // color: Colors.blue,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Toy", price: 123.4, url: "assets/toy4.png",desc1: "Here goes the description of the product", id: ''))));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/toy4.png'))),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Toy"),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Toy", price: 123.4, url: "assets/toy1.png",desc1: "Here goes the description of the product", id: ''))));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/toy1.png'))),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Toy"),
                                ],
                              ),
                            ),                       
                            // color: Colors.blue,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Toy", price: 123.4, url: "assets/toy2.png",desc1: "Here goes the description of the product", id: ''))));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/toy2.png'))),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Toy"),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Toy", price: 123.4, url: "assets/toy3.png",desc1: "Here goes the description of the product", id: ''))));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/toy3.png'))),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Toy"),
                                ],
                              ),
                            ),                        
                            
                            // color: Colors.blue,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(product: Product(name: "Toy", price: 123.4, url: "assets/toy4.png",desc1: "Here goes the description of the product", id: ''))));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 2), image:const DecorationImage(image:AssetImage('assets/toy4.png'))),
                            child:const Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("₹123.4"),
                                  Text("Toy"),
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