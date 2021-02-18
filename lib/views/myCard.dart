import 'package:flutter/material.dart';
import 'imgPage.dart';

class MyCard extends StatefulWidget {
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Images card",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Center(
        child: Card(
          child: Container(
            width: 400,
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(
                          image: AssetImage("assets/download.png"),
                          width: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Introducing Flutter",
                          style: TextStyle(color: Colors.grey, fontSize: 30),
                        ),
                      )
                    ],
                  ),
                  Container(
                    color: Colors.blue,
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => (MySecondPage())),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.network(
                            "https://picsum.photos/200",
                            width: 80,
                            height: 100,
                          ),
                          Image.network(
                            "https://picsum.photos/200",
                            width: 80,
                            height: 100,
                          ),
                          Image.network(
                            "https://picsum.photos/200",
                            width: 80,
                            height: 100,
                          ),
                          Image.network(
                            "https://picsum.photos/200",
                            width: 80,
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Icon(Icons.thumb_up),
                        Padding(padding: const EdgeInsets.only(left: 10.0)),
                        Text(
                          "Like",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Padding(padding: const EdgeInsets.only(right: 50.0)),
                        Icon(Icons.comment),
                        Padding(padding: const EdgeInsets.only(left: 10.0)),
                        Text(
                          "Comment",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
