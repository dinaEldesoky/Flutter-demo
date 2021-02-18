import 'package:day2/models/post.dart';
import 'package:day2/services/postsService.dart';
import 'package:day2/views/postDetails.dart';

import 'package:flutter/material.dart';

import 'postsCard.dart';

class MyPostsPage extends StatefulWidget {
  String body;
  MyPostsPage({this.body});
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPostsPage> {
  List<Post> postList = new List();

  @override
  void initState() {
    super.initState();
    getPostFromsServer();
  }

  @override
  void dispose() {
    super.dispose();
  }

  getPostFromsServer() async {
    postList = await PostService().getPosts();
    setState(() {});
  }

  TextStyle style = TextStyle(color: Colors.red, fontSize: 50);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            "Title Cards",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: postList.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MySecondPage(
                            text: postList[index].title,
                            body: postList[index].body)),
                  );
                },
                child: MyPostsCard(
                  text: postList[index].title,
                ),
              );
            }));
  }
}
