import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Filtrado extends StatefulWidget {
  const Filtrado({super.key});

  @override
  State<Filtrado> createState() => _FiltradoState();
}

class _FiltradoState extends State<Filtrado> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "FILTRADO",
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
