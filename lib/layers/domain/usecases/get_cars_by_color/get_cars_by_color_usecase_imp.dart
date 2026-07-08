import 'package:clean_arch_estudos/layers/domain/entities/carro_entity.dart';
import 'package:clean_arch_estudos/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';

class GetCarsByColorUseCaseImp implements GetCarsByColorUseCase {
  @override
  CarEntity call(String color) {
    if (color.contains('vermelho')) {
      return CarEntity(id: '1', placa: 'ABC1234', valor: 50000.0, qtdPortas: 4);
    }
    return CarEntity(id: '1', placa: 'XYZ5678', valor: 20000.0, qtdPortas: 2);
  }
}
