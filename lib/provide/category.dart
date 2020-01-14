import 'package:flutter/material.dart';

class ChildCategory with ChangeNotifier {
  List childCategoryList = [];
  getChildCategory(List list) {
    childCategoryList = list;
    notifyListeners();
  }
} 