import 'package:flutter/material.dart';
import 'package:music2/page/addblog.dart';
import 'package:music2/page/hello.dart';
import 'package:music2/page/listblog.dart';
import 'package:music2/page/splash.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/Hellome",
      routes: {
        "/": (context) => const HomePage(),
        "/Addblog": (context) => const Addblog(),
        "/Grid": (context) => const Listblog(),
        "/Hellome":(context) =>  HelloMe(),
      },
    );
  }
}
