import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  initialValue: 'Username',
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.search,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "History",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              abc("Iphone 12",
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5okOp355PtGO57ZelRyadaoTi3sAohVy5Wg&usqp=CAU'),
              abc("Note 20 Ultra",
                  'https://www.notebookcheck.net/uploads/tx_nbc2/4_3_Teaser_Samsung_Galaxy_Note20_Ultra_5G_SM-N986B_MysticWhite.jpg'),
              abc("Macbook Air",
                  'https://www.climaxcomputer.com/wp-content/uploads/2020/05/New-Apple-Macbook-Air-Gold-New.jpg'),
              abc("Macbook Pro",
                  'https://www.xda-developers.com/files/2021/05/Apple-MacBook-Pro-2021-1024x683.jpg'),
              abc("Gaming PC",
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_7DOY4lxZ50MVQpg-re2eIx2D1wxHjnAn6w&usqp=CAU'),
              abc("Backlit Keyboard",
                  'https://miro.medium.com/max/12000/0*ntgcrnlgmR82FdTy'),
              abc("Mercedes",
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Mercedes-Benz_C118_IMG_2673.jpg/1200px-Mercedes-Benz_C118_IMG_2673.jpg'),
              abc("Mutton",
                  'https://farm4.static.flickr.com/3249/3072624056_52147b7cf6_o.jpg'),
              abc("Roadster",
                  'https://www.tesla.com/sites/default/files/images/roadster/roadster-social.jpg'),
              abc("Royal Field",
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuWOtop_U5H3MVlBhQSKmGwXfU8y6jdCmEig&usqp=CAU'),
            ],
          )),
    );
  }
}

Widget abc(var name, var image) {
  return Container(
    height: 70,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(radius: 25, backgroundImage: NetworkImage(image)),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    Row(
                      children: [
                        Image.network(
                          "https://www.pinclipart.com/picdir/big/576-5762346_yellow-star-shape-png-yellow-star-icon-png.png",
                          height: 15,
                          width: 15,
                        ),
                        Text("5.0 (23 Review)"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(alignment: Alignment.centerRight, child: Text("\$10")),
        ],
      ),
    ),
  );
}
