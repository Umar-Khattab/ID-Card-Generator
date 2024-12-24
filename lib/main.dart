import 'package:flutter/material.dart';
import 'Screens/inputScreen.dart';

void main() {
  runApp(const IDCardApp());
}

class IDCardApp extends StatelessWidget {
  const IDCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ID Card Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const InputScreen(),
    );
  }
}