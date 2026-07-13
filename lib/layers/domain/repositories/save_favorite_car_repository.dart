import 'package:clean_arch_estudos/layers/domain/entities/car_entity.dart';

abstract class SaveFavoriteCarRepository {
 Future<bool> call(CarEntity carEntity);
}