class Gelado_model {
  String id;
  String imagem;
  String nome;
  String info;

  Gelado_model(this.id, this.imagem, this.nome, this.info);
}

List<Gelado_model> gelado_model = [
  Gelado_model('1', 'assets/cold_brew.jpg', 'Cold Brew', "Cold Brew é um café extraído a frio por 12 horas, resultando em uma bebida suave, menos ácida e com sabor mais intenso e encorpado."),
  Gelado_model('2', 'assets/cold_capim_limão.jpg', 'Cold Capim Limão', "Cold Capim Limão é uma bebida refrescante que combina xarope de capim limão, cold brew e água com gás, proporcionando um sabor cítrico e revigorante com um toque efervescente."),
  Gelado_model('3', 'assets/berry_coffe.jpg', 'Berry Coffe', "Berry Coffee é uma bebida inovadora que mistura xarope de amora, água tônica e espresso, oferecendo um equilíbrio entre a doçura frutada e o sabor intenso do café com um toque efervescente."),
];