import 'package:flutter/material.dart';
import 'package:fika_app/screens/account_page.dart';
import 'package:fika_app/screens/home.dart';
import 'package:fika_app/screens/help_page.dart';
import 'package:fika_app/screens/inbox_page.dart';
import 'package:fika_app/widgets/calendar.dart';
import 'package:intl/date_symbol_data_local.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Calendar(),
    InboxPage(),
    //BookingPage(),
    HelpPage(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final items = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    const BottomNavigationBarItem(icon: Icon(Icons.inbox), label: "Inbox"),
    const BottomNavigationBarItem(icon: Icon(Icons.help), label: "Help"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.account_circle), label: "Account"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
            onTap: _onItemTapped,
            currentIndex: _selectedIndex,
            elevation: 10,
            backgroundColor: Color.fromARGB(255, 255, 177, 59),
            selectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            items: items),
      ),
    );
  }
}
