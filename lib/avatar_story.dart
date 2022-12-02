import 'package:flutter/material.dart';

class AvatarStory extends StatelessWidget {
  final String image;
  final String name;
  const AvatarStory({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(75),
                  gradient: const LinearGradient(
                    begin: Alignment.center,
                    colors: [
                      Colors.red,
                      Colors.purple,
                      Colors.red,
                      Colors.orange
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                    height: 70,
                    width: 70,
                    padding: const EdgeInsets.all(3),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(image),
                    )),
              )
            ],
          ),
          Text(name),
        ],
      ),
    );
  }
}
