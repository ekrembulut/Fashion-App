import 'package:fashionapp1/members.dart';
import 'package:flutter/material.dart';

class MyDrawer2 extends StatefulWidget {
  MyDrawer2({Key? key}) : super(key: key);

  @override
  State<MyDrawer2> createState() => _MyDrawer2State();
}

class _MyDrawer2State extends State<MyDrawer2> {
  late List myMembers;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myMembers = [Members("Ekrem ", "ekrmbulut@gmail.com"), Members("Ekrem ", "ekrmbulut@gmail.com")];

  }

  var currentNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // buildHeader(context),

            Lalala(),
            buildList(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                currentNumber = 0;
              },
              child: CircleAvatar(
                radius: 52,
                backgroundColor: Colors.red,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                currentNumber = 1;
              },
              child: CircleAvatar(
                radius: 26,
                backgroundColor: Colors.yellow,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(myMembers[currentNumber].name),
        SizedBox(
          height: 10,
        ),
        Text(myMembers[currentNumber].email)
      ],
    );
  }

  Widget buildList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Wrap(
        runSpacing: 8,
        children: [
          ListTile(
            onTap: () {
              print(myMembers[0].name);
            },
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text("Call"),
          ),
          ListTile(
            leading: Icon(Icons.support),
            title: Text("Support"),
          ),
        ],
      ),
    );
  }
}

class Lalala extends StatefulWidget {
  Lalala({Key? key}) : super(key: key);

  @override
  State<Lalala> createState() => _LalalaState();
}

class _LalalaState extends State<Lalala> {
  var myMembers = [
    Members("Ekrem", "ekrmbulut@gmail.com"),
    Members("Ördek", "ördek@gmail.com"),
  ];
  var currentNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {});
                currentNumber = 0;
              },
              child: CircleAvatar(
                radius: 52,
                backgroundColor: Colors.red,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {});
                currentNumber = 1;
              },
              child: CircleAvatar(
                radius: 26,
                backgroundColor: Colors.yellow,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(myMembers[currentNumber].isim),
        SizedBox(
          height: 10,
        ),
        Text(myMembers[currentNumber].email)
      ],
    );
  }
}
