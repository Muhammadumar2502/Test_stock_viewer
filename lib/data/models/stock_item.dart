// ignore_for_file: use_super_parameters

import 'package:stock_viewer/exports.dart';

class StockItemModel extends StockItem {
  StockItemModel({
    required String name,
    required String producer,
    required int quantity,
  }) : super(name: name, producer: producer, quantity: quantity);

  factory StockItemModel.fromFakeData(
      String name, String producer, int quantity) {
    return StockItemModel(name: name, producer: producer, quantity: quantity);
  }
}
