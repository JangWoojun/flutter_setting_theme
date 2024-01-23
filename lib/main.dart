import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

const imagePath = "assets/images/";

void main() {
  runApp(MaterialApp(
    theme: customTheme,
    home: Scaffold(
      body: const Body(),
      appBar: AppBar(title: const Text("app bar"),),
      floatingActionButton: FloatingActionButton(child: const Icon(Icons.bug_report), onPressed: () => print("fab")),
    ),
  ));
}

final customTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
  // const ColorScheme.light(
  //   primary: Colors.indigo,
  //   secondary: Colors.green,
  //   tertiary: Colors.yellow
  // ),
  appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
  useMaterial3: true,
  textTheme: const TextTheme(
      bodyMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 130)
  ),
);

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final textThem = customTheme.textTheme;

    return SafeArea(
        child: SingleChildScrollView(child: Center(child: Column(
          children: [
            Text("aaa", style: textThem.bodyMedium,),
            Image.asset("$imagePath/image.jpg"),
          ],
        ),))
    );
  }
}
