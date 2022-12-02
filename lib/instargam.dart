import 'package:flutter/material.dart';
import 'package:instagram/avatar_story.dart';
import 'package:instagram/post.dart';

class Instargam extends StatelessWidget {
  const Instargam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset('assets/images/logo.png',
            fit: BoxFit.cover, width: 150),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 5),
            child: Icon(Icons.add_circle_outline, color: Colors.black),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 5),
            child: Icon(Icons.favorite_border_outlined, color: Colors.black),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 5),
            child: Icon(Icons.message_outlined, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: const [
                AvatarStory(image: 'assets/images/bean.jpg', name: 'Mr. Bean'),
                AvatarStory(image: 'assets/images/bean.jpg', name: 'Mr. Bean'),
                AvatarStory(image: 'assets/images/bean.jpg', name: 'Mr. Bean'),
                AvatarStory(image: 'assets/images/bean.jpg', name: 'Mr. Bean'),
                AvatarStory(image: 'assets/images/bean.jpg', name: 'Mr. Bean'),
                AvatarStory(image: 'assets/images/bean.jpg', name: 'Mr. Bean'),
                AvatarStory(image: 'assets/images/bean.jpg', name: 'Mr. Bean'),
                AvatarStory(image: 'assets/images/bean.jpg', name: 'Mr. Bean'),
                AvatarStory(image: 'assets/images/bean.jpg', name: 'Mr. Bean'),
                AvatarStory(image: 'assets/images/bean.jpg', name: 'Mr. Bean'),
                AvatarStory(image: 'assets/images/bean.jpg', name: 'Mr. Bean'),
              ]),
            ),
            const Divider(color: Colors.grey),
            const Post(postImage: 'assets/images/bean.jpg', postName: 'Mr. Bean'),
            const Divider(color: Colors.grey),
            const Post(postImage: 'assets/images/bean.jpg', postName: 'Mr. Bean'),
             
          ],
        ),
      ),
    );
  }
}
