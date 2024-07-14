import 'package:flutter/material.dart';
import "package:firebase_auth/firebase_auth.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 250,
          ),
          const Center(
            child: Text(
              "Mero Blog",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontFamily: "dawa"),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                auth
                    .signOut()
                    .then((value) => Navigator.pushNamed(context, "/login"));
              },
              child: const Text("Go to add New Blog"))
        ],
      ),
    );
  }
}