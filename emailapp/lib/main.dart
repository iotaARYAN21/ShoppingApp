import 'package:emailapp/Categories/in_category.dart';
import 'package:emailapp/Categories/jackets.dart';
import 'package:emailapp/Categories/laptops.dart';
import 'package:emailapp/Categories/mobiles.dart';
import 'package:emailapp/Categories/sneakers.dart';
import 'package:emailapp/Categories/tshirts.dart';
import 'package:emailapp/login_page.dart';
import 'package:emailapp/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main()async {
  if(kIsWeb){   // Connecting my firebase project with this project
    WidgetsFlutterBinding.ensureInitialized();
    await  Firebase.initializeApp(options:const FirebaseOptions(  apiKey: "AIzaSyDh-8lFPbNXXRRHUdUeo-f9acFFstDaUzk",
  authDomain: "shopping-app-8289e.firebaseapp.com",
  projectId: "shopping-app-8289e",
  storageBucket: "shopping-app-8289e.appspot.com",
  messagingSenderId: "93828882916",
  appId: "1:93828882916:web:45d388035576f09763a7f1") );
  }
  else{
   await Firebase.initializeApp();
  }
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),   // to show a different screen for some time
      routes : {
        '/grocery' : (context) => InCategory(),
        '/jackets' : (context) => Jackets(),
        '/furniture' : (context) => Jackets(),
        '/laptop' : (context) => Laptops(),
        '/mobile' : (context) => Mobiles(),
        '/sneaker' : (context) => Sneakers(),
        '/toy' : (context) => Jackets(),
        '/tshirt' : (context) => Tshirts(),
      }
    );
  }
}


