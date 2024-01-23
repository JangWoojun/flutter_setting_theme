import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

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
    final list = generateWordPairs().take(5).toList();
    final wordTexts = list
        .map((word) => Text(
              word.asString,
              style: const TextStyle(fontSize: 22, color: Colors.blue),
            ))
        .toList();
    return SafeArea(
        child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: wordTexts,
            )));
  }
}
