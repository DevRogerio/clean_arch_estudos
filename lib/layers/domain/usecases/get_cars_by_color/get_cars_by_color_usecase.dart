import 'package:clean_arch_estudos/layers/domain/entities/car_entity.dart';

abstract class GetCarsByColorUseCase {
  CarEntity call(String color);
}
