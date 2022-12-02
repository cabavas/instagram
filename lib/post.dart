import 'package:flutter/material.dart';

import 'avatar.dart';

class Post extends StatelessWidget {
  final String postImage;
  final String postName;
  const Post({Key? key, required this.postImage, required this.postName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 30),
          child: Row(
            children:  [
              Avatar(image: postImage),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(postName),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 210),
                child: Icon(Icons.more_vert),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Image.asset('assets/images/post.jpg'),
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.favorite_border_outlined),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.comment_outlined),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.send_outlined),
            ),
            Padding(
              padding: EdgeInsets.only(left: 180),
              child: Icon(Icons.save_outlined),
            ),
          ],
        ),
        const Text('Curtido por Mr. Bean e outras pessoas'),
        const Text('Ver todos os 69 comentários', style: TextStyle(color: Colors.grey),),
      ],
    );
  }
}
