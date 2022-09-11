import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import "MyModules.dart";

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // ignore: prefer_const_constructors
      options: FirebaseOptions(
          apiKey: "AIzaSyAawazqgyqOTA0fOPInaWlr2ZIgsGuoxSk",
          authDomain: "mymtnapp-f76c9.firebaseapp.com",
          projectId: "mymtnapp-f76c9",
          storageBucket: "mymtnapp-f76c9.appspot.com",
          messagingSenderId: "1085519253149",
          appId: "1:1085519253149:web:9a3cdace69bb27d58f0e74",
          measurementId: "G-93H2CZNHQ6"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Varsity Ally'),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/MyModules': (BuildContext context) => const MyModules()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                    "Hello koketso",
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
          Container(
            alignment: const Alignment(1, 0),
            padding: const EdgeInsets.only(top: 15, left: 50),
            child: const InkWell(
              child: Text(
                'Forgot Password',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrrat',
                    decoration: TextDecoration.underline),
              ),
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
                onTap: () {},
                // ignore: prefer_const_constructors
                child: Center(
                    // ignore: prefer_const_constructors
                    child: Text(
                  'LOGIN',
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
                  Navigator.of(context).pushNamed('/signup');
                },
                child: const Text('Create An Account',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrrat',
                        decoration: TextDecoration.underline)),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/MyModules');
                },
                child: const Text('View My Modules',
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
