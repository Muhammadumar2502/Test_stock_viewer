import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_viewer/exports.dart';

class StockListState extends StateNotifier<List<StockItem>> {
  final FetchStockItems fetchStockItems;
  int currentPage = 0;
  final int itemsPerPage = 50;
  final int maxItems = 5000;

  StockListState(this.fetchStockItems) : super([]) {
    loadMore();
  }

  void loadMore() {
    if (state.length < maxItems) {
      final remainingItems = maxItems - state.length;
      final itemsToLoad =
          remainingItems > itemsPerPage ? itemsPerPage : remainingItems;
      final newItems = fetchStockItems.execute(itemsToLoad);
      state = [...state, ...newItems];
      currentPage++;
    }
  }
}
