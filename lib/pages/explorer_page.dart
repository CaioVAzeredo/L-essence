import 'package:flutter/cupertino.dart';
import 'package:lessence/componentes/alcolico.dart';
import 'package:lessence/model/alcoolico_model.dart';
import 'package:lessence/model/gelado_model.dart';


import '../componentes/espresso.dart';
import '../componentes/filtrado.dart';
import '../componentes/gelado.dart';
import '../componentes/header.dart';
import '../componentes/info.dart';
import '../model/espresso_model.dart';
import '../model/filtrado_model.dart';

class ExplorerPage extends StatefulWidget {
  const ExplorerPage({super.key});

  @override
  State<ExplorerPage> createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
  @override
  Widget build(BuildContext context) {
    final espresso = espresso_model;
    final filtrado = filtrado_model;
    final gelado = gelado_model;
    final alcoolico = alcoolico_model;

    return ListView(
      children: [
        Header(),
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Espresso(espressos: espresso),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Filtrado(filtrado: filtrado),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Gelado(gelado: gelado),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Alcoolico(alcoolico: alcoolico),
        ),
        Info(),
      ],
    );
  }
}
