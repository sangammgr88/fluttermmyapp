import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Form(
            child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  iconColor: Colors.red,
                  hintText: "Enter username",
                  labelText: "Please Enter Your Username"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                iconColor: Colors.red,
                hintText: "Enter username",
                labelText: "Please Enter Your Username",
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/singup");
                },
                child: Text("Register"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Register",
                ),
              ),
            ),
          ],
        )),
      )),
    );
  }
}