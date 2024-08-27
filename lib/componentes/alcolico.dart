import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lessence/model/alcoolico_model.dart';
import 'package:lessence/pages/detalhe_alcoolico.dart';

class Alcoolico extends StatelessWidget {
  final List<Alcoolico_model> alcoolico;
  const Alcoolico({super.key, required this.alcoolico,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Alcoólicos",
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
                width: 340,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: alcoolico.length,
                    itemBuilder: (context, index) {
                      final alcoolicos = alcoolico[index];

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
                                            return DetalheAlcoolico(alcoolico_model: alcoolicos);
                                          }));
                                        },
                                        child:Image.asset(
                                          alcoolicos.imagem,
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
                                  alcoolicos.nome,
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                onTap: () {
                                  print("Clicou em ${alcoolicos.nome}");
                                },
                              ),
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
