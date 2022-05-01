import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          elevation: 1,
          title: Text(
            "MY ACCOUNT",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * 0.2,
                color: Colors.yellow,
                // color: Color.fromRGBO(33, 150, 243, 1),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey[100],
                      child: Image.network(
                        'https://www.pngitem.com/pimgs/m/35-350426_profile-icon-png-default-profile-picture-png-transparent.png',
                        scale: 5,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("User",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 19)),
                        Text("user@user.com",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 19)),
                        Text("0123456789",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 19))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'You have ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 19),
                      children: const <TextSpan>[
                        TextSpan(
                            text: '0.00',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red)),
                        TextSpan(text: ' coins'),
                      ],
                    ),
                  )
                  // Text("You have 0.00 Coins",
                  //     style: TextStyle(
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w500,
                  //         fontSize: 19)),
                  ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset(0, 3))
                ]),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.list),
                      title: Text("Transaction History"),
                      trailing: Icon(Icons.navigate_next),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    ListTile(
                      leading: Icon(Icons.redeem),
                      title: Text("Redeem Coin"),
                      trailing: Icon(Icons.navigate_next),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    ListTile(
                      leading: Icon(Icons.monetization_on),
                      title: Text("Topup Coin"),
                      trailing: Icon(Icons.navigate_next),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    ListTile(
                      leading: Icon(Icons.help),
                      title: Text("Learn more"),
                      trailing: Icon(Icons.navigate_next),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text("My Details",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 19)),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset(0, 3))
                ]),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text("My Address"),
                      trailing: Icon(Icons.navigate_next),
                    ),
                    ListTile(
                      leading: Icon(Icons.credit_card),
                      title: Text("Payment Method"),
                      trailing: Icon(Icons.navigate_next),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset(0, 3))
                ]),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.logout),
                      title: Text("Logout"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
