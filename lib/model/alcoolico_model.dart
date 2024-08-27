
class Alcoolico_model{
  String id;
  String imagem;
  String nome;
  String info;

  Alcoolico_model(this.id, this.imagem, this.nome, this.info);
}

List<Alcoolico_model> alcoolico_model = [
  Alcoolico_model('1','assets/espresso_martini.jpg','Espresso Martini', "O Espresso Martini é um coquetel elegante que combina espresso duplo, xarope de baunilha e vodka, criando uma bebida sofisticada com um equilíbrio perfeito entre o sabor intenso do café e a suavidade da baunilha e da vodka."),
  Alcoolico_model('2','assets/irish_coffe.jpg','Irish Coffee', "O Irish Coffee é uma bebida clássica que mistura xarope de açúcar de coco, whisky e cold brew, tudo coberto com uma camada generosa de creme de leite, resultando em um coquetel suave e reconfortante com um toque doce e cremoso."),
];
