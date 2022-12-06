import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'avatar.dart';

class Post extends StatelessWidget {
  final String postImage;
  final String authorImage;
  final String postName;
  const Post({Key? key,required this.authorImage, required this.postImage, required this.postName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 30),
          child: Row(
            children: [
              Avatar(image: authorImage),
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
          child: Image.asset(postImage),
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(FontAwesomeIcons.heart),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(FontAwesomeIcons.comment),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(FontAwesomeIcons.paperPlane),
            ),
            Padding(
              padding: EdgeInsets.only(left: 180),
              child: Icon(FontAwesomeIcons.bookmark),
            ),
          ],
        ),
         Padding(
          padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
          child: Row(
            children: const [
              Text('Curtido por '),
              Text('Mr. Bean ', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('e '),
              Text('outras pessoas ', style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
        // RichText(
        //   text: const TextSpan(
        //     children: <TextSpan>[
              
        //       TextSpan(text: 'Curtido por '),
        //       TextSpan(text: 'Mr. Bean ', style: TextStyle(fontWeight: FontWeight.bold)),
        //       TextSpan(text: 'e '),
        //       TextSpan(text: 'outras pessoas ', style: TextStyle(fontWeight: FontWeight.bold)),

        //     ]
        //   ),
        // ),
        const Padding(
          padding:  EdgeInsets.only(left: 10, top: 5, bottom: 5),
          child:  Text(
            'Ver todos os 69 comentários',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
