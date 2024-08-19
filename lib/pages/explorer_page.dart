import 'package:flutter/cupertino.dart';

import '../componentes/alcolico.dart';
import '../componentes/espresso.dart';
import '../componentes/filtrado.dart';
import '../componentes/gelado.dart';
import '../componentes/header.dart';
import '../componentes/info.dart';
import '../model/espresso_model.dart';

class ExplorerPage extends StatefulWidget {
  const ExplorerPage({super.key});

  @override
  State<ExplorerPage> createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
  @override
  Widget build(BuildContext context) {

    final espresso = espresso_model;

    return ListView(
      children: [
        Header(),
        Espresso(espresso: espresso),
        Filtrado(),
        Gelado(),
        Alcolico(),
        Info(),

      ],
    );
  }
}
