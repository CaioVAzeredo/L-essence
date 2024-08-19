import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lessence/model/espresso_model.dart';

class Espresso extends StatefulWidget {
  final List<Espresso_model> espresso;

  const Espresso({super.key, required this.espresso});

  @override
  State<Espresso> createState() => _EspressoState();
}

class _EspressoState extends State<Espresso> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            "Espresso",
            style: TextStyle(
              color: Color(0xFFAB9E8E),
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(

                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
