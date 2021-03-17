import 'dart:convert';

class AuthenticationDto {
  String username;
  String password;

  String toJson() {
    return jsonEncode(this);
  }
}
