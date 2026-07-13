import 'package:clean_arch_estudos/layers/domain/entities/car_entity.dart';
import 'package:clean_arch_estudos/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:clean_arch_estudos/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';
import 'package:clean_arch_estudos/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class SaveFavoriteCarRepositoryImp implements SaveFavoriteCarRepository {
  @override
  Future<bool> call(CarEntity carEntity) async {
    return carEntity.price > 0;
  }
}

void main() {
  test('I hope you successfully save the car', () async {
    SaveFavoriteCarUseCase useCase = SaveFavoriteCarUseCaseImp(
      SaveFavoriteCarRepositoryImp(),
    );

    var car = CarEntity(plate: 'abc1234', price: 1, numDoors: 2, id: 1);

    var result = await useCase(car);
    expect(result, true);
  });

  test(
    'I hope it doesn\t save the car when the value is less than or equal to zero',
    () async {
      SaveFavoriteCarUseCase useCase = SaveFavoriteCarUseCaseImp(
        SaveFavoriteCarRepositoryImp(),
      );

      var car = CarEntity(plate: 'abc1234', price: 0, numDoors: 2, id: 1);

      var result = await useCase(car);
      expect(result, false);
    },
  );
}
