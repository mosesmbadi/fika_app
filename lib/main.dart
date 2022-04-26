import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget profileSection = Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              child: Text(
                'Hi, Moses, welcome',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Expanded(child: Container()),
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://scontent.fmba5-1.fna.fbcdn.net/v/t39.30808-6/274512613_496889975138626_3466404655979511609_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGiq9RpsaiiILS3MKaGpMlkr4oYMvkam-Kvihgy-Rqb4sx2sC5UrZsGc5ASV_zj1rzUGjgOydEsRf3rsArPIStp&_nc_ohc=6D2f1UScC5sAX89iwtR&_nc_pt=5&_nc_zt=23&_nc_ht=scontent.fmba5-1.fna&oh=00_AT-nQJmdYFclop8G9aFN9_y9sgYAtd_o7sEpknzF9FKX4w&oe=626AE74A'),
              backgroundColor: Colors.amberAccent,
            )
          ],
        ));

    Widget daysSection = Container(
      height: 100,
      child: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(10),
          children: [
            Container(
              height: 450,
              width: 45,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Column(
                  children: [
                    Text('Mon'),
                    Text('10'),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 450,
              width: 45,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text('Tue'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 450,
              width: 45,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text('Wed'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 450,
              width: 45,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text('Thur'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 450,
              width: 45,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text('Fri'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 450,
              width: 45,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text('Sat'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 450,
              width: 45,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text('Sun'),
              ),
            ),
          ]),
    );

    Color color = Theme.of(context).primaryColor;

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        body: ListView(
          children: [
            profileSection,
            daysSection,
            textSection,
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {}, //addErrand
          label: const Text('Add Errand'),
          icon: const Icon(Icons.add),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
