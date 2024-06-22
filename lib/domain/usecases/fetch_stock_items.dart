import 'package:stock_viewer/exports.dart';

class FetchStockItems {
  final StockRepository repository;

  FetchStockItems(this.repository);

  List<StockItem> execute(int count) {
    return repository.fetchStockItems(count);
  }
}
