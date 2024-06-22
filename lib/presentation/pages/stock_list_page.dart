// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_viewer/exports.dart';

class StockListPage extends ConsumerStatefulWidget {
  @override
  _StockListPageState createState() => _StockListPageState();
}

class _StockListPageState extends ConsumerState<StockListPage> {
  final ScrollController _scrollController = ScrollController();
  int _selectedIndex = -1; 

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      ref.read(stockListProvider.notifier).loadMore();
    }
  }

  void _onKey(RawKeyEvent event) {
    if (event is RawKeyDownEvent) {
      setState(() {
        if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
          if (_selectedIndex < ref.read(stockListProvider).length - 1) {
            _selectedIndex++;
            _scrollToSelected();
          }
        } else if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
          if (_selectedIndex > 0) {
            _selectedIndex--;
            _scrollToSelected();
          }
        }
      });
    }
  }

  void _scrollToSelected() {
    _scrollController.animateTo(
      _selectedIndex * 76.0, 
      duration: Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final stockItems = ref.watch(stockListProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Stock List')),
      body: RawKeyboardListener(
        focusNode: FocusNode()..requestFocus(),
        onKey: _onKey,
        child: ListView.builder(
          // physics: const ClampingScrollPhysics(),
          controller: _scrollController,
          itemCount: stockItems.length,
          itemBuilder: (context, index) {
            final item = stockItems[index];
            final isSelected = index == _selectedIndex;
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                    _scrollToSelected();
                  });
                },
                child: Card(
                  elevation: 4,
                  color:
                      isSelected ? Colors.deepPurple.withOpacity(0.5) : Colors.white,
                  child: ListTile(
                    title: Text(item.name),
                    subtitle: Text(item.producer),
                    trailing: Text('Qty: ${item.quantity}'),
                    selected: isSelected,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
