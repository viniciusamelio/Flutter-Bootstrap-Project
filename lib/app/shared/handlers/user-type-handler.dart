import 'package:teste/app/shared/dto/driver-dto.dart';
import 'package:teste/app/shared/dto/user-dto.dart';

User userTypeHandler(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'driver':
      return Driver.fromJson(json);
      break;
    default:
      return Driver.fromJson(json);
  }
}
