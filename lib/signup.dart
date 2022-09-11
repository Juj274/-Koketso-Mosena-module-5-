// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class SignupPage extends StatefulWidget {
  @override

  // ignore: library_private_types_in_public_api
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // ignore: avoid_unnecessary_containers
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 110, 0, 0),
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Create an Account",
                    // ignore: prefer_const_constructors
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.only(top: 35, left: 28, right: 30),
            child: Column(
              children: const <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Email Address',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue))),
                  obscureText: true,
                ),
                SizedBox(
                  height: 5.0,
                ),
                // ignore: unnecessary_const
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 40,
          ),
          // ignore: sized_box_for_whitespace
          Container(
            height: 40,
            child: Material(
              borderRadius: BorderRadius.circular(27),
              shadowColor: Colors.blueAccent,
              color: Colors.black,
              elevation: 7,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/MyModules');
                },
                // ignore: prefer_const_constructors
                child: Center(
                    // ignore: prefer_const_constructors
                    child: Text(
                  'Create Account',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrrat',
                  ),
                )),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Back',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrrat',
                        decoration: TextDecoration.underline)),
              )
            ],
          )
        ],
      ),
    );
  }
}
