import 'package:clean_arch_estudos/layers/domain/entities/carro_entity.dart';

abstract class SaveFavoriteCarUseCase {
  Future<bool> call(CarEntity carroEntity);
}
