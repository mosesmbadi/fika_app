import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '/screens/addErrand.dart';
import '../utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final CollectionReference _errandss =
      FirebaseFirestore.instance.collection('errands');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
// Todo, change this button to extended one with 'Errands' label
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => addErrands()));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),

      body: Column(
        children: [
          SizedBox(
            height: 250,
            child: GridView.count(
              childAspectRatio: 14 / 9,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              crossAxisCount: 2,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Personalized\nErrands",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Icon(
                        Icons.chair,
                        size: 55,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Short-term\nWorkforce",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Icon(
                        Icons.iron,
                        size: 55,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Professional\nConsultation",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Icon(
                        Icons.eco,
                        size: 55,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Move-in/out\nCleaning",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Icon(
                        Icons.house,
                        size: 55,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          //displays data from cloud firestore
          StreamBuilder(
            stream: _errandss.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              if (streamSnapshot.hasData) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: streamSnapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      final DocumentSnapshot documentSnapshot =
                          streamSnapshot.data!.docs[index];
                      return Card(
                        margin: const EdgeInsets.all(10),
                        child: ListTile(
                          title: Text(documentSnapshot['title']),
                          subtitle: Text(documentSnapshot['description']),
                          trailing: SizedBox(
                            width: 100,
                            child: Row(children: []),
                          ),
                        ),
                      );
                    },
                  ),
                );
              }

              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ],
      ),
    );
  }
}

Future<void> _createOrUpdate([DocumentSnapshot? documentSnapshot]) async {
  String action = 'create';
  if (documentSnapshot != null) {}
}

final CollectionReference _errandss =
    FirebaseFirestore.instance.collection('errands');
