import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Alcolico extends StatefulWidget {
  const Alcolico({super.key});

  @override
  State<Alcolico> createState() => _AlcolicoState();
}

class _AlcolicoState extends State<Alcolico> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "ALCÓLICOS",
          style: TextStyle(color: Colors.white, fontSize: 50),
        ),
        Container(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 300,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
