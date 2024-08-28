import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lessence/model/gelado_model.dart';

import '../componentes/header.dart';

class DetalheGelado extends StatefulWidget {
  final Gelado_model gelado_model;

  const DetalheGelado({super.key, required this.gelado_model});

  @override
  State<DetalheGelado> createState() => _DetalheGeladoState();
}

class _DetalheGeladoState extends State<DetalheGelado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar
      appBar: AppBar(
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(
          color: Colors.white, // Define a cor da seta de voltar
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/fundo_de_tela.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView(
            children: [
              Header(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    //Nome
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Center(
                        child: Text(
                          widget.gelado_model.nome,
                          style: TextStyle(
                            color: Color(0xFFAB9E8E),
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    //Conteudo
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black.withOpacity(0.4),
                        ),
                        height: 400,
                        width: 700,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Container(
                                      height: 600,
                                      width: 320,
                                      child: Text(
                                        widget.gelado_model.info,
                                        style: TextStyle(
                                            color: Color(0xFFAB9E8E),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      ),
                                    ),
                                  ), //Info
                                  //Imagem
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: 400,
                                      width: 300,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                            widget.gelado_model.imagem),
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
