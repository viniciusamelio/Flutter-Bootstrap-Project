import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';
import 'package:teste/app/modules/home/bloc/home-bloc.dart';
import 'package:teste/app/shared/dto/driver-dto.dart';
import 'package:teste/app/shared/dto/user-dto.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeBloc _homeBloc;

  @override
  void initState() {
    _homeBloc = HomeBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RxBuilder(
        builder: (_) {
          return _homeBloc.getNumberRequest.status == FutureStatus.pending
              ? CircularProgressIndicator()
              : Container(
                  child: Text('${_homeBloc.getNumberRequest.data ?? 'Zerado'}'),
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.calculate),
        onPressed: () {
          Navigator.of(context)
              .pushNamed('/home', arguments: new Driver.fromJson({}));
        },
      ),
    );
  }
}
