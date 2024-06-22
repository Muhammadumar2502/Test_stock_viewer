import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_viewer/exports.dart';

final stockRepositoryProvider = Provider<StockRepository>((ref) {
  return StockRepositoryImpl();
});

final fetchStockItemsProvider = Provider<FetchStockItems>((ref) {
  final repository = ref.watch(stockRepositoryProvider);
  return FetchStockItems(repository);
});

final stockListProvider =
    StateNotifierProvider<StockListState, List<StockItem>>((ref) {
  final fetchStockItems = ref.watch(fetchStockItemsProvider);
  return StockListState(fetchStockItems);
});
