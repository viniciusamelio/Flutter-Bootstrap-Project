class DefaultHttpResponse {
  String message;
  String code;
  String error;

  DefaultHttpResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    code = json['code'];
    error = json['error'];
  }
}
