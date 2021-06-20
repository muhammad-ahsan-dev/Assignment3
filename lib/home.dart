import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Center(
                child: Text(
                  "Ecom APP UI",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.notifications, color: Colors.black),
                  onPressed: () {},
                )
              ],
            ),
            body: Column(
              children: [
                Container(
                  height: 200,
                  child: Row(children: [
                    Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png"),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "User",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Text("abc@gmail.com",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("\nlogout",
                            style: TextStyle(
                              color: Colors.purple,
                            ))
                      ],
                    )
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("ACCOUNT INFORMATION",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20))),
                ),
                SizedBox(height: 20),
                ab("Full Name", "User"),
                ab("Email", "user@gmail.com"),
                ab("Phone", "+0900-786-01"),
                ab("Address", "New York,Random Street House No. 72"),
                ab("Gender", "Male"),
                ab("Date of Birth", "October 13,1999"),
              ],
            )));
  }
}

Widget ab(var title, var subtitle) {
  return Container(
    height: 60,
    child: Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text(subtitle, style: TextStyle(fontSize: 15))
          ],
        ),
      ),
    ),
  );
}
