import 'package:flutter/material.dart';
import 'package:secound_task/chat_ui.dart';
import 'package:secound_task/homescreen.dart';
import 'package:secound_task/pacakge.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ChatUI());
  }
}
