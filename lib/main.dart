import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Chat GPT Android"),
          
          titleTextStyle: const TextStyle(fontSize: 32),
        ),
        body: const Center(
          child:  Text('Hello World!'),
        ),
      ),
    );
  }
}
