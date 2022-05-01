import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "How can we help you?",
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Our home services", style: TextStyle(fontSize: 20)),
                SizedBox(
                  height: 10,
                ),
                ServicesGrid(),
                SizedBox(
                  height: 10,
                ),
                Text("Need a helping hand?", style: TextStyle(fontSize: 20)),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(Icons.kitchen),
                  title: Text("Kitchen Helper"),
                  trailing: Icon(Icons.navigate_next),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.card_giftcard),
                  title: Text("Packing/Unpacking"),
                  trailing: Icon(Icons.navigate_next),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.kitchen),
                  title: Text("Event assitance"),
                  trailing: Icon(Icons.navigate_next),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text("Others"),
                  trailing: Icon(Icons.navigate_next),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ServicesGrid extends StatelessWidget {
  const ServicesGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                Text("Basic\nHousekeeping",
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
                color: Colors.red, borderRadius: BorderRadius.circular(5)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Premium\nIroning",
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
                color: Colors.green, borderRadius: BorderRadius.circular(5)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Spring\nCleaning",
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
    );
  }
}
