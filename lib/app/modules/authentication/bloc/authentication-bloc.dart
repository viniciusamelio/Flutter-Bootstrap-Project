import 'package:rx_notifier/rx_notifier.dart';
import 'package:teste/app/modules/authentication/dto/authentication-dto.dart';
import 'package:teste/app/modules/authentication/interfaces/interface-authentication-repository.dart';
import 'package:teste/app/shared/dto/user-dto.dart';

class AuthenticationBloc {
  final loading = RxNotifier<bool>(false);

  final AuthenticationDto _dto = AuthenticationDto();
  final InterfaceAuthenticationRepository _repository;

  RxFuture<User> loginRequest;

  AuthenticationBloc(this._repository);

  void setUser({String username, String password}) {
    _dto.username = username;
    _dto.password = password;
  }

  void login() {
    loginRequest = _repository.authenticate(_dto).asRx();
  }
}
