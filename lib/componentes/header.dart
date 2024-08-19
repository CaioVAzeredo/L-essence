import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            child: ClipRRect(
              child: Image.asset(
                "assets/Lessence-CLINIC-Logo-300px.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Cartas de Cafés",
              style: TextStyle(color: Color(0xFFAB9E8E), fontSize: 35, fontWeight: FontWeight.bold,),
            ),
          )
        ],
      ),
    );
  }
}
