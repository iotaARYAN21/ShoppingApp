import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      final cred = await auth.createUserWithEmailAndPassword(
          email: email, password: password); // create credential for the user that we are registering
      return cred.user;
    } catch (e) {
      log("Something went wrong");
    }
    return null;
  }

  Future<User?> logInWithEmailAndPassword(
      String email, String password) async {
    try {
      final cred = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      return cred.user;
    }
    // on FirebaseAuthException catch (e) {
    //   log("Something went wrong $e");
    //   // if(e.code == 'email-already-in-use'){
    //   //   showToast(message : "The email is already in use");
    //   // }
    //   // else{
    //   //   showToast(message: "An error occured");
    //   // }
    // }
    catch(e){
      log("Error Occured!!!! $e");
    }
    return null;
  }

  Future<void> signout() async {
    try {
      await auth.signOut(); // sign out currently logged in user
    } catch (e) {
      log("Something went wrong");
    }
  }
}