class Gifit {
  String name;
  String image;
  String message;

  Gifit(this.name, this.image, this.message);
}

List<Gifit> cuponsList = [
  Gifit('desconto10', 'assets/images/discount10.png', 'Você ganhou cupom, aproveite !!!'),
  Gifit('desconto20', 'assets/images/discount20.png', 'Aproveite o seu presente !!!'),
  Gifit('desconto25', 'assets/images/discount25.png', 'Que sortudo, parabéns !!!'),
];