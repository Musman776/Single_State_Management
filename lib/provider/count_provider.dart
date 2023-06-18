import 'package:flutter/cupertino.dart';

class CountProvider with ChangeNotifier{
    int _c =0;

    int get c => _c;

    set (int value) => _c = value;

    increment(){
      _c++;
      notifyListeners();
    }
}