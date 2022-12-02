import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String image;
  const Avatar({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            gradient: const LinearGradient(
              begin: Alignment.center,
              colors: [Colors.red, Colors.purple, Colors.red, Colors.orange],
            ),
          ),
        ),
        Container(
            height: 35,
            width: 35,
            padding: const EdgeInsets.all(3),
            child: CircleAvatar(
              backgroundImage: AssetImage(image),
            ))
      ],
    );
  }
}
