class logoutModel {
  logoutModel({
    required this.status,
    required this.errorCode,
    required this.error,
  });
  late final int status;
  late final int errorCode;
  late final String error;

  logoutModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errorCode = json['error_code'];
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['error_code'] = errorCode;
    _data['error'] = error;
    return _data;
  }
}
