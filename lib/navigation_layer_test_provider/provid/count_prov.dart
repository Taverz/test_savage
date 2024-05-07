import 'package:flutter/widgets.dart';

class CountProvider<int> extends ChangeNotifier {
  var count = 0;
  CountProvider();
  

  void countPlus(){
    count++;
    notifyListeners();
  }
}