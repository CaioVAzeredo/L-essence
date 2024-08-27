import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black.withOpacity(0.4),
            ),
            height: 190,
            width: 700,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        "Informações do café \n"
                        "Mokinha",
                        style: TextStyle(
                            color: Color(0xFFAB9E8E),
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                      ),
                    ),
                    Text(
                      " - Variedade: Catuaí Amarelo\n"
                      "- Processamento: Natural\n"
                      "- Região: Cerrado mineiro\n"
                      "- Cidade Carmo do Paranaíba, MG\n"
                      "- Produtor: Andrade Bros\n"
                      "- www.andradebros.com.br\n",
                      style: TextStyle(color: Color(0xFFAB9E8E), fontSize: 20),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
