class CarEntity {
  final String id;
  final String placa;
  final double valor;
  final int qtdPortas;

  CarEntity({
    required this.id,
    required this.placa,
    required this.valor,
    required this.qtdPortas,
  });

  double get valorReal {
    return valor * qtdPortas;
  }

  setCarLogic() {
    if (valor > 10000.00) {
      valor * 2;
    }
  }
}
