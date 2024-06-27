import 'package:e_com_app/Screens/cement.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List<CementProduct> _items = [];

  List<CementProduct> get items => _items;

  void addItem(CementProduct product) {
    _items.add(product);
    notifyListeners();
  }

  void removeItem(CementProduct product) {
    _items.remove(product);
    notifyListeners();
  }

  int get itemCount => _items.length;
}
