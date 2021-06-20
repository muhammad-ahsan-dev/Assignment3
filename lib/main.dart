import 'package:ecommerce/detail.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'detail.dart';

void main() {
  runApp(Detail());
}

class MyApp extends StatelessWidget {
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
            body: ListView(
              children: [
                abc("Iphone 12",
                    "https://img.router-switch.com/media/customoptions/127/2/4/iphone-12-black.jpg"),
                abc("Note 20 Ultra",
                    "https://www.notebookcheck.net/uploads/tx_nbc2/4_3_Teaser_Samsung_Galaxy_Note20_Ultra_5G_SM-N986B_MysticWhite.jpg"),
                abc("Macbook Air",
                    "https://www.climaxcomputer.com/wp-content/uploads/2020/05/New-Apple-Macbook-Air-Gold-New.jpg"),
                abc("Macbook Pro",
                    "https://www.xda-developers.com/files/2021/05/Apple-MacBook-Pro-2021-1024x683.jpg"),
                abc("Gaming PC",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_7DOY4lxZ50MVQpg-re2eIx2D1wxHjnAn6w&usqp=CAU")
              ],
            )));
  }
}

Widget abc(var name, var image) {
  return Container(
    height: 150,
    child: Row(
      children: [
        Image.network(
          image,
          height: 150,
          width: 150,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Image.network(
                    "https://www.pinclipart.com/picdir/big/576-5762346_yellow-star-shape-png-yellow-star-icon-png.png",
                    height: 15,
                    width: 15,
                  ),
                  Text(" 5.0 (23 Review)"),
                ],
              ),
              Row(
                children: [
                  Text("20 Pieces"),
                  Text(
                    " \$90",
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text("Quantity: 1"),
            ],
          ),
        ),
      ],
    ),
  );
}
