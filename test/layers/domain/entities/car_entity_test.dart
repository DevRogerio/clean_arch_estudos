import 'package:clean_arch_estudos/layers/domain/entities/car_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('I hope the entity is not null', () {
    CarEntity carEntity = CarEntity(
      id: 1,
      plate: 'abc1234',
      price: 50000.0,
      numDoors: 4,
    );
    expect(carEntity, isNotNull);
  });

  test('I hope the number of doors is 2', () {
    CarEntity carEntity = CarEntity(
      id: 1,
      plate: 'abc1234',
      price: 50000.0,
      numDoors: 2,
    );
    expect(carEntity.numDoors, 2);
  });

  test('I hope the actual value is 2000.00', () {
    CarEntity carEntity = CarEntity(
      id: 1,
      plate: 'abc1234',
      price: 1000.0,
      numDoors: 2,
    );
    var resultExpected = 2000.00;
    expect(carEntity.realValue, resultExpected);
  });

  test('I hope the number of doors is 2', () {
    CarEntity carEntity = CarEntity(
      id: 1,
      plate: 'abc1234',
      price: 1000.0,
      numDoors: 2,
    );
    var resultExpected = 2000.00;
    expect(carEntity.realValue, resultExpected);
  });

  test('I hope the amount is 30000.00', () {
    CarEntity carEntity = CarEntity(
      id: 1,
      plate: 'abc1234',
      price: 15000.0,
      numDoors: 2,
    );
    var resultExpected = 30000.00;

    carEntity.setCarLogic();

    expect(carEntity.price, resultExpected);
  });
}
