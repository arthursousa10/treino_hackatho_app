class Minifitalina {
  final String name;
  final num quanty;
  final String description;
  final String imagePath;
  int quantity;
  double totalPrice;

  Minifitalina(
      {required this.name,
      required this.quanty,
      required this.description,
      required this.imagePath,
      this.quantity = 0,
      this.totalPrice = 0});

  //incremento quantidade
  void incrementQuantity() {
    quantity++;
    totalPrice += quanty;
  }

  // decremento de quantidade
  void decreamentQuantity() {
    quantity--;
    totalPrice -= quanty;
  }

  //quantidade inicial
  void initialQuantity() {
    quantity = 0;
    totalPrice = 0;
  }
}
