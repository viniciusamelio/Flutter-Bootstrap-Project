import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';
import 'package:teste/app/modules/home/bloc/home-bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeBloc _homeBloc;
  RxDisposer _incrementReactionDisposer;

  @override
  void initState() {
    _homeBloc = HomeBloc();
    _incrementReactionDisposer = rxObserver(
        () {
          return _homeBloc.incrementRequest?.status;
        },
        filter: () =>
            _homeBloc.incrementRequest.status == FutureStatus.fulfilled,
        effect: (_) {
          _homeBloc.counter.value = _homeBloc.incrementRequest.data;
        });
    super.initState();
  }

  @override
  void dispose() {
    _incrementReactionDisposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RxBuilder(
        builder: (_) {
          return Center(child: Text(_homeBloc.counter.value.toString()));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.calculate),
        onPressed: _homeBloc.incrementFuture,
      ),
    );
  }
}
