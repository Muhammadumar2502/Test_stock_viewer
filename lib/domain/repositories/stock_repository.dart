import 'package:stock_viewer/exports.dart';

abstract class StockRepository {
  List<StockItem> fetchStockItems(int count);
}
