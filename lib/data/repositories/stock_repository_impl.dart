import 'package:faker/faker.dart';
import 'package:stock_viewer/exports.dart';


class StockRepositoryImpl implements StockRepository {
  final Faker faker = Faker();

  @override
  List<StockItem> fetchStockItems(int count) {
    return List.generate(count, (index) {
      final name = faker.lorem
          .words(faker.randomGenerator.integer(50, min: 50))
          .join(' ');
      final producer = faker.lorem
          .words(faker.randomGenerator.integer(20, min: 20))
          .join(' ');
      final quantity = faker.randomGenerator.integer(100, min: 1);
      return StockItemModel.fromFakeData(name, producer, quantity);
    });
  }
}
