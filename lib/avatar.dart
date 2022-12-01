import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String image;
  const Avatar({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(75),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              colors: [Colors.red, Colors.purple, Colors.red, Colors.yellow],
            ),
          ),
        ),
        Container(
            height: 75,
            width: 75,
            padding: const EdgeInsets.all(3),
            child: CircleAvatar(
              backgroundImage: AssetImage(image),
            ))
      ],
    );
  }
}
