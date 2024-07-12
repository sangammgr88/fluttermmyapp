import 'package:flutter/material.dart';

class person extends StatefulWidget {
  const person({super.key});

  @override
  State<person> createState() => _personState();
}

class _personState extends State<person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Account create succesfully"),
            backgroundColor: Colors.pink,
            duration: Duration(seconds: 5),
            ),
        );
      }, child: Text("Register button"
      )),),
    );
  }
}