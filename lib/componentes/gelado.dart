import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gelado extends StatefulWidget {
  const Gelado({super.key});

  @override
  State<Gelado> createState() => _GeladoState();
}

class _GeladoState extends State<Gelado> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "GELADOS",
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
