import 'package:day2/views/postPage.dart';
import 'package:flutter/material.dart';

import 'myCard.dart';

class MyFirstPage extends StatefulWidget {
  @override
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "My first app",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            MaterialButton(
              padding: const EdgeInsets.all(20.0),
              minWidth: MediaQuery.of(context).size.width,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyPostsPage()),
                );
              },
              color: Colors.deepPurple,
              textColor: Colors.white,
              child: Text("Get Posts Titles", style: TextStyle(fontSize: 15)),
            ),
            Padding(padding: const EdgeInsets.all(20.0)),
            MaterialButton(
              padding: const EdgeInsets.all(20.0),
              minWidth: MediaQuery.of(context).size.width,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyCard()),
                );
              },
              color: Colors.deepPurple,
              textColor: Colors.white,
              child: Text("Get Images List", style: TextStyle(fontSize: 15)),
            )
          ],
        ),
      ),
    );
  }
}
