import 'package:flutter/material.dart';
import 'package:fika_app/models/todo.dart';
import 'package:fika_app/screens/notification_details.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('INBOX'),
            centerTitle: false,
          ),
          body: Scaffold(
              appBar: TabBar(labelColor: Colors.black, tabs: [
                Tab(
                  text: "MESSAGES",
                ),
                Tab(
                  text: "NOTIFICATIONS",
                )
              ]),
              body: Scaffold(
                body: TabBarView(children: [
                  MessageTab(),
                  NotificationTab(),
                ]),
              )),
        ),
      ),
    );
  }
}

class NotificationTab extends StatelessWidget {
  NotificationTab({
    Key? key,
  }) : super(key: key);

  final todos = List<Todo>.generate(
      20,
      (i) => Todo(
          title: "Notification Title ${i + 1}",
          description: "Notification Descriptions ${i + 1}"));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 20),
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, i) => Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NotificationDetails(todo: todos[i])));
                    },
                    leading: Icon(Icons.card_giftcard),
                    title: Text(todos[i].title!),
                    subtitle: Text(
                      todos[i].description!,
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

class MessageTab extends StatelessWidget {
  const MessageTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Text(
              "You will able to send messages to the crew once they have accepted your request.",
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      )),
    );
  }
}
