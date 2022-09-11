import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MyModules extends StatefulWidget {
  const MyModules({Key? key}) : super(key: key);

  @override
  State<MyModules> createState() => _MyModulesState();
}

class _MyModulesState extends State<MyModules> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    TextEditingController ModuleController = TextEditingController();
    // ignore: non_constant_identifier_names
    TextEditingController CodeController = TextEditingController();

    Future _addModules() {
      final ModuleName = ModuleController.text;
      final ModuleCode = CodeController.text;

      final ref = FirebaseFirestore.instance.collection("Modules").doc();
      return ref
          .set({
            "Module Name": ModuleName,
            "Module Code": ModuleCode,
            "Doc_id": ref.id
          })
          .then((value) => log("Module Added"))
          .catchError((onError) => log(onError));
    }

    return Scaffold(
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables, prefer_const_constructors
        children: [
          Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: TextField(
              controller: ModuleController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular((20)),
                  ),
                  hintText: "Enter Modules Name"),
            ),
          ),
          Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: TextField(
              controller: CodeController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular((20)),
                  ),
                  hintText: "Enter Modules Code"),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                _addModules();
              },
              child: const Text("Add Modules"))
        ],
      ),
    );
  }
}
