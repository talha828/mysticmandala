class SignupModel {
  SignupModel({
    required this.status,
    required this.errorCode,
    required this.error,
    required this.result,
  });
  late final int status;
  late final int errorCode;
  late final String error;
  late final String result;

  SignupModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errorCode = json['error_code'];
    error = json['error'];
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['error_code'] = errorCode;
    _data['error'] = error;
    _data['result'] = result;
    return _data;
  }
}
