import 'package:flutter/cupertino.dart';

class TopModel extends ChangeNotifier {
  Future init() async {
    notifyListeners();
  }

  int currentIndex = 0;

  void onTabTapped(int index) {
    currentIndex = index;
    notifyListeners();
  }

}
