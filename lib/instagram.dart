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
                AvatarStory(image: 'assets/images/arlesi.jpg', name: 'Arlesi'),
                AvatarStory(image: 'assets/images/bean.jpg', name: 'Mr. Bean'),
                AvatarStory(image: 'assets/images/le.jpg', name: 'Lela'),
                AvatarStory(image: 'assets/images/lhama.jpg', name: 'Lumeco'),
                AvatarStory(image: 'assets/images/motoca.jpg', name: 'Vitor'),
                AvatarStory(image: 'assets/images/nenem.jpg', name: 'Loli'),
                AvatarStory(image: 'assets/images/panda.jpg', name: 'Panda'),
                AvatarStory(image: 'assets/images/ric.jpg', name: 'Ricardo'),
                AvatarStory(image: 'assets/images/saco.jpg', name: 'Saco'),
                AvatarStory(image: 'assets/images/thiago.jpg', name: 'Thiago'),
                AvatarStory(image: 'assets/images/leo.jpg', name: 'Leo'),
              ]),
            ),
            const Divider(color: Colors.grey),
            const Post(
              postImage: 'assets/images/post.jpg',
              postName: 'Arlesi',
              authorImage: 'assets/images/arlesi.jpg',
            ),
            const Divider(color: Colors.grey),
            const Post(
              postImage: 'assets/images/post1.jpg',
              postName: 'Mr. Bean',
              authorImage: 'assets/images/bean.jpg',
            ),
            const Divider(color: Colors.grey),
            const Post(
              postImage: 'assets/images/post2.jpg',
              postName: 'Lela',
              authorImage: 'assets/images/le.jpg',
            ),
            const Divider(color: Colors.grey),
            const Post(
              postImage: 'assets/images/post6.jpg',
              postName: 'Lumeco',
              authorImage: 'assets/images/lhama.jpg',
            ),
            const Divider(color: Colors.grey),
            const Post(
              postImage: 'assets/images/post4.jpg',
              postName: 'Vitor',
              authorImage: 'assets/images/motoca.jpg',
            ),
            const Divider(color: Colors.grey),
            const Post(
              postImage: 'assets/images/post5.jpg',
              postName: 'Loli',
              authorImage: 'assets/images/nenem.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
