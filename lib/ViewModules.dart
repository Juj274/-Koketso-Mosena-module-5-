import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ListModules extends StatefulWidget {
  const ListModules({super.key});

  @override
  State<ListModules> createState() => _ListState();
}

class _ListState extends State<ListModules> {
  final Stream<QuerySnapshot> _myModules =
      FirebaseFirestore.instance.collection("Modules").snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _myModules,
      builder: (BuildContext context,
          AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {
        if (snapshot.hasError) {
          return const Text("Something went wrong");
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        if (snapshot.hasData) {
          return Row(
            children: [
              Expanded(
                  child: SizedBox(
                      height: (MediaQuery.of(context).size.height),
                      width: (MediaQuery.of(context).size.width),
                      child: ListView(
                        children: snapshot.data!.docs
                            .map((DocumentSnapshot documentSnapshot) {
                          Map<String, dynamic> data =
                              documentSnapshot.data() as Map<String, dynamic>;
                          return ListTile(
                            title: Text(data['Module Name']),
                            subtitle: Text(data['Module Code']),
                          );
                        }).toList(),
                      )))
            ],
          );
        } else {
          return (Text("No Data"));
        }
      },
    );
  }
}
