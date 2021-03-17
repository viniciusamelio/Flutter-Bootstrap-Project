import 'package:flutter/material.dart';
import 'package:teste/app/shared/dto/user-dto.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  User _user;

  @override
  void didChangeDependencies() {
    if (_user == null) {
      // Coleta de parâmetro por rota nomeada
      _user = ModalRoute.of(context).settings.arguments as User;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
