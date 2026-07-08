import 'package:clean_arch_estudos/layers/domain/entities/carro_entity.dart';
import 'package:clean_arch_estudos/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:clean_arch_estudos/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';

class SaveFavoriteCarUseCaseImp implements SaveFavoriteCarUseCase {
  final SaveFavoriteCarRepository _saveFavoriteCarRepository;
  SaveFavoriteCarUseCaseImp(this._saveFavoriteCarRepository);

  @override
  Future<bool> call(CarEntity carEntity) async {
    carEntity.setCarLogic();
    return await _saveFavoriteCarRepository(carEntity);
  }
}
