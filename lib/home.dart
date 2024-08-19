import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lessence/pages/explorer_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/fundo_de_tela.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        ExplorerPage(),
      ],
    ));
  }
}
