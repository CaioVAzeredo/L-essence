import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black)),
      title: 'Carta de Cafés',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
