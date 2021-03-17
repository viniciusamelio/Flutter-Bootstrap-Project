import 'package:teste/app/shared/dto/user-dto.dart';

class Driver extends User {
  String cnh;

  Driver.fromJson(Map<String, dynamic> json) {
    cnh = json['cnh'];
    cnpj = json['cnpj'];
    email = json['email'];
    name = json['name'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['cnh'] = cnh;
    json['cnpj'] = cnpj;
    json['email'] = email;
    json['name'] = name;
    return json;
  }
}
