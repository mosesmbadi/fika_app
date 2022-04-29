import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: const Text(''),
        ),
        body: Container(
          
            child: Column(children: [
          //profile section goes here
          Container(
            height: 180,
            width: 500,
            decoration: BoxDecoration(color: Colors.green),
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          //todo - put padding on top only
                          padding: const EdgeInsets.all(5.0),
                          child:
                            Text("Hi, Moses,",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                            textAlign: TextAlign.right,
                            ),
                        ),

                        Container(
                          child:
                            Text("You have 10 errands to complete",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromARGB(255, 241, 241, 241)),
                        textAlign: TextAlign.right,
                        ),
                        ),
                      ],
                    ),
                    //space between greetings and profile photo
                    SizedBox(
                      width: 20,
                    ),
                    //used a container to put the constraints on the image
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset('assets/images/profile_photo.png'),
                    )
                  ],
                ),
                Row(
                  children: [],
                )
              ],
            ),
          ),
          //list of errands goes here
          Expanded(
              child: SizedBox(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        decoration: new BoxDecoration(color: Colors.red),
                        child: Row(),
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        decoration: new BoxDecoration(color: Colors.blue),
                        child: Row(),
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        decoration: new BoxDecoration(color: Colors.green),
                        child: Row(),
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        decoration: new BoxDecoration(color: Colors.yellow),
                        child: Row(),
                      ),
                    ],
                  ))),
        ])),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {}, //addErrand
          label: const Text('Add Errand'),
          icon: const Icon(Icons.add),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}
