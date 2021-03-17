import 'package:teste/app/modules/authentication/dto/authentication-dto.dart';
import 'package:teste/app/shared/dto/user-dto.dart';

abstract class InterfaceAuthenticationRepository {
  Future<User> authenticate(AuthenticationDto dto);
}
