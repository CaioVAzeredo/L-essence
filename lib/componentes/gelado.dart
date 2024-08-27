import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lessence/model/gelado_model.dart';
import 'package:lessence/pages/detalhe_gelado.dart';

class Gelado extends StatelessWidget {
  final List<Gelado_model> gelado;
  const Gelado({super.key, required this.gelado});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(
          "Gelados",
          style: TextStyle(
            color: Color(0xFFAB9E8E),
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black.withOpacity(0.4),
            ),
            height: 300,
            width: 700,
            child: Center(
              child: SizedBox(
                width: 510,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: gelado.length,
                    itemBuilder: (context, index) {
                      final gelados = gelado[index];

                      return SizedBox(
                        width: 168,
                        height: 100,
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(8)),
                                child: AspectRatio(
                                  aspectRatio: 0.73,
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: [
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context){
                                            return DetalheGelado(gelado_model: gelados);
                                          }));
                                        },
                                        child:Image.asset(
                                          gelados.imagem,
                                          fit: BoxFit.cover,
                                        ) ,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //info
                              ListTile(
                                title: Text(
                                  gelados.nome,
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                onTap: () {
                                  print("Clicou em ${gelados.nome}");
                                },
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ))
      ],
    );
  }
}
