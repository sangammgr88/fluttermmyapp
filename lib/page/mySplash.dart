import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:music2/page/hello.dart';
import 'package:music2/page/login.dart';
import 'package:music2/page/register.dart';

class mySplashScreen extends StatefulWidget {
  const mySplashScreen({super.key});

  @override
  State<mySplashScreen> createState() => _mySplashScreenState();
}

class _mySplashScreenState extends State<mySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        logo:Image.network(
          "https://images.unsplash.com/photo-1620632523414-054c7bea12ac?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
     width: 200,
     height:200,
      ),
      backgroundColor: Colors.red,
      navigator: const Register(),
      durationInSeconds: 5,
      ),
    );
  }
}