// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  final Widget? child;
  const SplashScreen({super.key, this.child});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initAsync();
  }
    Future<void> _initAsync() async {
    await Future.delayed(Duration(seconds: 3)); // shows this screen for 3 second and then navigate to loginPage
    if (mounted) {
      Navigator.pushReplacement(  // used .pushReplacement as we dont have to come to this page again
        context,
        MaterialPageRoute(builder: (context) =>const  LoginPage()), // Navigate to login page
      );
    }
  }                               
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Welcome to SHOP 24/7 ",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
      ),
    );
  }
}