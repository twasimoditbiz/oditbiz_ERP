import 'package:flutter/cupertino.dart';

abstract class StateProvider extends ChangeNotifier{
  // update
  void update(void Function() update){
    update.call();
    notifyListeners();
  }
}