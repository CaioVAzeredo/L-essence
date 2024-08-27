import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lessence/model/espresso_model.dart';
import 'package:lessence/pages/detalhe_espresso.dart';

class Espresso extends StatelessWidget {
  final List<Espresso_model> espressos;

  const Espresso({super.key, required this.espressos});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Espressos",
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
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: espressos.length,
              itemBuilder: (context, index) {
                final espresso = espressos[index];

                return SizedBox(
                  width: 168,
                  height: 100,
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.vertical(top: Radius
                              .circular(8)),
                          child: AspectRatio(
                            aspectRatio: 0.73,
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                          return DetalheEspresso(
                                            espresso_model: espresso,
                                          );
                                        }));
                                  },
                                  child: Container(
                                    child: Image.asset(
                                      espresso.imagem,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        //info
                        ListTile(
                          title: Text(
                            espresso.nome,
                            style: Theme
                                .of(context)
                                .textTheme
                                .titleSmall,
                          ),
                          subtitle: Text(
                            espresso.ml,
                            style: Theme
                                .of(context)
                                .textTheme
                                .bodySmall,
                          ),
                          onTap: () {
                            print("Clicou em ${espresso.nome}");
                          },
                        ),
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
