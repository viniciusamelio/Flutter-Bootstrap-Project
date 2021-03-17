import 'package:rx_notifier/rx_notifier.dart';

class HomeBloc {
  RxFuture getNumberRequest;
  RxFuture<int> incrementRequest;

  final counter = RxNotifier<int>(0);

  Future<int> _getNumber() async {
    await Future.delayed(Duration(seconds: 2));
    return 5;
  }

  Future<int> _add() async {
    await Future.delayed(Duration(seconds: 1));
    return counter.value++;
  }

  void increment() {
    counter.value++;
  }

  void incrementFuture() {
    incrementRequest = _add().asRx();
  }

  getRandomNumber() {
    getNumberRequest = _getNumber().asRx();
  }
}
