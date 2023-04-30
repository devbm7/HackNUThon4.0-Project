import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// ignore: unused_import
import 'package:loginuicolors/Dashboard.dart';
import 'package:loginuicolors/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState()=>_SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>{
  @override

  void initState(){
    super.initState();
    Timer(Duration(seconds: 2),(){
      var pushReplacement = Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyLogin(),
      ));
    });
  }

  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child:Center(child:Text('HackathonApp',style:TextStyle(
          fontSize:34,
          fontWeight: FontWeight.w700,
          color:Colors.white
        )))
      ),
    );
  }
}

