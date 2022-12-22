class UpdateProfile {
  UpdateProfile({
    required this.status,
    required this.errorCode,
    required this.error,
    required this.result,
  });
  late final int status;
  late final int errorCode;
  late final String error;
  late final Result result;

  UpdateProfile.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errorCode = json['error_code'];
    error = json['error'];
    result = Result.fromJson(json['result']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['error_code'] = errorCode;
    _data['error'] = error;
    _data['result'] = result.toJson();
    return _data;
  }
}

class Result {
  Result({
    required this.iamge,
    required this.name,
    required this.mobile,
    required this.address,
    required this.cityName,
    required this.lastName,
    required this.birthDate,
  });
  late final bool iamge;
  late final bool name;
  late final bool mobile;
  late final bool address;
  late final bool cityName;
  late final bool lastName;
  late final bool birthDate;

  Result.fromJson(Map<String, dynamic> json) {
    iamge = json['iamge'];
    name = json['name'];
    mobile = json['mobile'];
    address = json['address'];
    cityName = json['city_name'];
    lastName = json['last_name'];
    birthDate = json['birth_date'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['iamge'] = iamge;
    _data['name'] = name;
    _data['mobile'] = mobile;
    _data['address'] = address;
    _data['city_name'] = cityName;
    _data['last_name'] = lastName;
    _data['birth_date'] = birthDate;
    return _data;
  }
}
