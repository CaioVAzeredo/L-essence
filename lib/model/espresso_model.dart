class Espresso_model {
  String id;
  String imagem;
  String nome;
  String ml;
  String info;

  Espresso_model(this.id, this.imagem, this.nome, this.ml, this.info);
}

List<Espresso_model> espresso_model = [
  Espresso_model(
      '1', 'assets/espresso_duplo.jpg', 'Espresso Duplo', '80ml', "O espresso duplo é uma bebida intensa e concentrada, com 80 ml de café, apreciada por seu sabor forte e maior teor de cafeína."),
  Espresso_model('2', 'assets/imagem_teste.jpg', 'Espresso Carioca', '80ml', "O espresso carioca é um café espresso com adição de um pouco de água, resultando em uma bebida mais suave, mas ainda com o sabor característico do espresso."),
  Espresso_model('3', 'assets/CAPUCCINO.JPG', 'Capuccino', '80ml', "O cappuccino é uma combinação clássica de espresso, leite vaporizado e uma camada de espuma cremosa, criando uma bebida equilibrada e suave."),
  Espresso_model('4', 'assets/capuccino_com_chocolate.jpg',
      'Capuccino com chocolate', '80ml', "O cappuccino com chocolate é uma variação deliciosa que combina espresso, leite vaporizado e chocolate meio amargo, criando uma bebida rica e indulgente com um toque de doçura."),
  Espresso_model('5', 'assets/macchiato.jpg', 'Macchiato', '60ml', "O macchiato é um espresso coberto com uma pequena quantidade de espuma de leite, criando uma bebida equilibrada com um toque suave de cremosidade."),
];