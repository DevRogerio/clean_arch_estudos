import 'package:clean_arch_estudos/layers/domain/entities/car_entity.dart';
import 'package:clean_arch_estudos/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';

class GetCarsByColorUseCaseImp implements GetCarsByColorUseCase {
  @override
  CarEntity call(String color) {
    if (color.contains('vermelho')) {
      return CarEntity(id: 1, plate: 'ABC1234', price: 50000.0, numDoors: 4);
    }
    return CarEntity(id: 1, plate: 'XYZ5678', price: 20000.0, numDoors: 2);
  }
}
