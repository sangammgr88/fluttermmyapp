import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                icon: Icon(Icons.email),
                iconColor: Colors.red,
                hintText: "Enter Email",
                labelText: "Please Enter Your Email Address",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                icon: Icon(Icons.lock),
                iconColor: Colors.red,
                hintText: "Enter Password",
                labelText: "Please Enter Your Password",
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                child: Text("Login"),
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