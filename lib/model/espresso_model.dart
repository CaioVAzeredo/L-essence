class Espresso_model {
  String id;
  String imagem;
  String nome;
  String ml;

  Espresso_model(this.id, this.imagem, this.nome, this.ml);
}

List<Espresso_model> espresso_model = [
  Espresso_model('1', '', 'Espresso Duplo', '80ml'),
  Espresso_model('2', '', 'Espresso Carioca', '180ml'),
  Espresso_model('3', '', 'Capuccino', '60ml'),
  Espresso_model('4', '', 'Capuccino com chocolate', '80ml'),
  Espresso_model('5', '', 'Macchiato', '80ml'),
];