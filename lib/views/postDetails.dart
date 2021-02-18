import 'package:flutter/material.dart';

class MySecondPage extends StatefulWidget {
  String body;
  String text;
  MySecondPage({this.text, this.body});

  @override
  _MySecondPageState createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  TextStyle style = TextStyle(color: Colors.red, fontSize: 50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Post Details",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                      child: Text(widget.text,
                          style: TextStyle(
                              color: Colors.deepPurpleAccent, fontSize: 30)))),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                      child: Text(widget.body,
                          style: TextStyle(
                              color: Colors.deepPurpleAccent, fontSize: 20)))),
            ],
          ),
        ),
      ),
    );
  }
}
