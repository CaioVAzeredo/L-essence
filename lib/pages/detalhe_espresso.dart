import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../componentes/header.dart';
import '../model/espresso_model.dart';

class DetalheEspresso extends StatefulWidget {
  final Espresso_model espresso_model;

  const DetalheEspresso({super.key, required this.espresso_model});

  @override
  State<DetalheEspresso> createState() => _DetalheEspresso();
}

class _DetalheEspresso extends State<DetalheEspresso> {
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
                padding: const EdgeInsets.only(top: 100,left: 20,right: 20),
                child: Column(
                  children: [
                    //Nome
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Center(
                        child: Text(
                          widget.espresso_model.nome,
                          style: TextStyle(
                            color: Color(0xFFAB9E8E),
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    //Conteudo
                    Container(
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
                                      widget.espresso_model.info,
                                      style: TextStyle(
                                          color: Color(0xFFAB9E8E),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                  ),
                                ),//Info
                                //Imagem
                                Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    height: 500,
                                    width: 300,
                                    child: Image.asset(
                                        widget.espresso_model.imagem)),
                              ],
                            ),
                          )
                        ],
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
