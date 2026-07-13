import 'package:clean_arch_estudos/layers/domain/entities/car_entity.dart';
import 'package:clean_arch_estudos/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';
import 'package:clean_arch_estudos/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should return a Car instance when any value is passed', () {
    GetCarsByColorUseCase useCase = GetCarsByColorUseCaseImp();

    var result = useCase('azul');

    expect(result, isInstanceOf<CarEntity>());
  });

  test('should return a four-door car when red', () {
    GetCarsByColorUseCase useCase = GetCarsByColorUseCaseImp();

    var result = useCase('vermelho');

    expect(result.numDoors, 4);
  });

  test('It should return a two-door car in any color except red', () {
    GetCarsByColorUseCase useCase = GetCarsByColorUseCaseImp();

    var result = useCase('verde');

    expect(result.numDoors, 2);
  });
}
