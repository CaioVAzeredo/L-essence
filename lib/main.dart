import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CardapioHome();
  }
}

class CardapioHome extends StatefulWidget {
  const CardapioHome({super.key});

  @override
  State<CardapioHome> createState() => _CardapioHomeState();
}

class _CardapioHomeState extends State<CardapioHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardapio Home',
      theme: ThemeData().copyWith(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent)),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cardápio Home"),
          centerTitle: true,
        ),
      ),
    );
  }
}
