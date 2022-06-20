import 'package:flutter/material.dart';

import 'homescreen.dart';
import 'sign_up.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  Widget _buildTextEmail() {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: "Email or Username",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

  bool _passVis = true;

  Widget _buildTextPass() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: const TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
        suffixIcon: IconButton(
          icon: _passVis ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
          onPressed: () {
            setState(() {
              _passVis = !_passVis;
            });
          },
        ),
      ),
      obscureText: _passVis,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 30.0, vertical: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Sign In",
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 90.0,
              ),
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      _buildTextEmail(),
                      const SizedBox(
                        height: 20.0,
                      ),
                      _buildTextPass(),
                    ],
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 10.0,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: <Widget>[
              //     GestureDetector(
              //       onTap: () {
              //         Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //                 builder: (context) => const ForgotPassword()));
              //       },
              //       child: const Text(
              //         "Forgot Password ?",
              //         style: TextStyle(
              //             color: Colors.blue,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 18.0),
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35.0),
                    color: Colors.blue,
                  ),
                  child: const Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Color(0xFFBDC2CB),
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  InkWell(
                    onTap: () {
                      // Link to SignUp Page
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => const SignUpPage()));
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                          fontSize: 17.0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

