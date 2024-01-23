import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

const imagePath = "assets/images/";

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: SingleChildScrollView(child: Center(child: Image.asset("$imagePath/image.jpg"),))
    );
  }
}
