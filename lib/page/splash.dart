import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
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
                fontFamily: "sangam",
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Addblog");
              },
              child: const Text("Go to add New Blog"))
        ],
      ),
    );
  }
}
