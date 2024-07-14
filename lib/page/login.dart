import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:music2/page/hello.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showSpinner = false;
  final _formkey = GlobalKey<FormState>();
  String email = '', password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    iconColor: Colors.red,
                    hintText: "Enter username",
                    labelText: "Please Enter Your Username",
                  ),
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
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Password';
                    }
                    return null;
                  },
                  onChanged: (String value) {
                    password = value;
                  },
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
                    onPressed: () async {
                      if (_formkey.currentState!.validate()) {
                        setState(
                          () {
                            showSpinner = true;
                          },
                        );

                        try {
                          final user = await _auth.signInWithEmailAndPassword(
                              email: email.toString().trim(),
                              password: password.toString().trim());

                          if (user != null) {
                            print("Success");
                            toastMessage("User Successfully Login");
                            setState(
                              () {
                                showSpinner = false;
                              },
                            );
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HelloMe()));
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