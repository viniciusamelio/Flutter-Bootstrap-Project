import 'package:dio/dio.dart';
import 'package:teste/app/modules/authentication/dto/authentication-dto.dart';
import 'package:teste/app/modules/authentication/interfaces/interface-authentication-repository.dart';
import 'package:teste/app/shared/dto/user-dto.dart';
import 'package:teste/app/shared/handlers/user-type-handler.dart';

class AuthenticationRepository implements InterfaceAuthenticationRepository {
  final Dio _dio;

  AuthenticationRepository(this._dio);

  Future<User> authenticate(AuthenticationDto authDto) async {
    try {
      final result = await _dio.post('/auth?p=' + authDto.toJson());
      final user = userTypeHandler(result.data);
      return user;
    } catch (e) {
      rethrow;
    }
  }
}
