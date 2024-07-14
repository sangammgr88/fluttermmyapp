import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:music2/page/login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String email = "", password = "";
  final _formKey = GlobalKey<FormState>();
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Email';
                    }
                    return null;
                  },
                  onChanged: (String value) {
                    email = value;
                  },
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
                  controller: passwordController,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Password';
                    }
                    return null;
                  },
                  onChanged: (String value) {
                    password = value;
                  },
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
                    onPressed: () async {
                      // Pre Written code given by Firebase_auth
                      if (_formKey.currentState!.validate()) {
                        setState(
                          () {
                            showSpinner = true;
                          },
                        );

                        try {
                          final user =
                              await _auth.createUserWithEmailAndPassword(
                                  email: email.toString().trim(),
                                  password: password.toString().trim());

                          if (user != null) {
                            print("Success");
                            toastMessage("User Successfully Created");
                            setState(
                              () {
                                showSpinner = false;
                              },
                            );
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          }
                        } catch (e) {
                          print(e.toString());
                          toastMessage(e.toString());
                          setState(
                            () {
                              showSpinner = false;
                            },
                          );
                        }
                      }
                    },
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

  void toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message.toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0);
  }
}