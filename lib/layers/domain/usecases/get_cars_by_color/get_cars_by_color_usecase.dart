import 'package:clean_arch_estudos/layers/domain/entities/carro_entity.dart';

abstract class GetCarsByColorUseCase {
  CarEntity call(String color);
}
