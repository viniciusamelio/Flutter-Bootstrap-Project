import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';
import 'package:teste/app/modules/authentication/bloc/authentication-bloc.dart';
import 'package:teste/app/modules/authentication/repository/authentication-repository.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  RxDisposer _loginDisposer;
  AuthenticationBloc _authenticationBloc;

  @override
  void initState() {
    _authenticationBloc = AuthenticationBloc(AuthenticationRepository(Dio()));

    _loginDisposer = rxObserver<bool>(() {
      return _authenticationBloc.loading.value;
    }, effect: (bool isLoading) {
      if (isLoading) {
        // Executa alguma animação
      }
      // Para a animação
    });
    super.initState();
  }

  @override
  void dispose() {
    _loginDisposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
