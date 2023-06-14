import 'package:chatgpt/back_end/requeste_openai.dart';
import 'package:chatgpt/widgets/chat_gpt.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print(enviarMensagem("Me conte uma piada"));
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: home_page()
    );
  }
}

