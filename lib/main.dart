import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:loginuicolors/dashboard.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:loginuicolors/login.dart';
import 'package:loginuicolors/qr_g.dart';
import 'package:loginuicolors/qr_generate.dart';
import 'package:loginuicolors/register.dart';
import 'package:loginuicolors/splashscreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(); 
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'qrgr': (context) => GeneratePage(),
      'homeqr': (context) => HomeScreen(),
      'dboard': (context) => Home(),
    },
  ));
}