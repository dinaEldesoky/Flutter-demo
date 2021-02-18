import 'package:flutter/material.dart';

class MyPostsCard extends StatefulWidget {
  String text;
  MyPostsCard({this.text});
  @override
  _MyPostsCardState createState() => _MyPostsCardState();
}

class _MyPostsCardState extends State<MyPostsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Stack(
            children: [
              Text(
                widget.text,
                style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
