class CarEntity {
  final int id;
  final String plate ;
  double  price;
  final int numDoors;

  CarEntity({
    required this.id,
    required this.plate ,
    required this.price,

    required this.numDoors,
  });

  double get realValue {
    return price * numDoors;
  }

  setCarLogic() {
    if (realValue > 10000.00) {
      price *= 2;
    }
  }
}
