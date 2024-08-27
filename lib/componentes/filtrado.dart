import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lessence/model/filtrado_model.dart';
import 'package:lessence/pages/detalhe_filtrado.dart';

class Filtrado extends StatelessWidget {
  final List<Filtrado_model> filtrado;

  const Filtrado({super.key, required this.filtrado});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Filtrado",
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
                width: 175,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: filtrado.length,
                    itemBuilder: (context, index) {
                      final filtrados = filtrado[index];

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
                                      Container(
                                        child: InkWell(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context){
                                              return DetalheFiltrado(filtrado_model: filtrados);
                                            }));
                                          },
                                          child:Image.asset(
                                            filtrados.imagem,
                                            fit: BoxFit.cover,
                                          ) ,
                                        ),

                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //info
                              ListTile(
                                title: Text(
                                  filtrados.nome,
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                subtitle: Text(
                                  filtrados.ml,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                onTap: () {
                                  print("Clicou em ${filtrados.nome}");
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
