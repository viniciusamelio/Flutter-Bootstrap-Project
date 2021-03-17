import 'dart:math';

import 'package:rx_notifier/rx_notifier.dart';

class HomeBloc {
  RxFuture<int> getNumberRequest;

  Future<int> _getNumber() async {
    await Future.delayed(Duration(seconds: 2));
    return Random().nextInt(100);
  }

  void getRandomNumber() {
    getNumberRequest = _getNumber();
  }
}
