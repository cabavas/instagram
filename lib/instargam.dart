import 'package:flutter/material.dart';
import 'package:instagram/avatar.dart';

class Instargam extends StatelessWidget {
  const Instargam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
        title: Image.asset('assets/images/logo.png', fit: BoxFit.cover),
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            children: const [
             Avatar(image: 'assets/images/bean.jpg'),
            ]
          )
        ],
      ),
    );
  }
}
