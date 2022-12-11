class loginmodel {
  loginmodel({
    required this.status,
    required this.errorCode,
    required this.error,
    required this.result,
  });
  late final int status;
  late final int errorCode;
  late final String error;
  late final Result result;

  loginmodel.fromJson(Map<String, dynamic> json) {
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
    required this.id,
    required this.accessToken,
    required this.displayName,
    required this.email,
    required this.image,
    required this.roleName,
    required this.firstName,
    required this.lastName,
    required this.cityName,
    required this.address,
  });
  late final int id;
  late final String accessToken;
  late final String displayName;
  late final String email;
  late final String image;
  late final String roleName;
  late final String firstName;
  late final String lastName;
  late final String cityName;
  late final String address;

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    accessToken = json['access_token'];
    displayName = json['display_name'];
    email = json['email'];
    image = json['image'];
    roleName = json['role_name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    cityName = json['city_name'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['access_token'] = accessToken;
    _data['display_name'] = displayName;
    _data['email'] = email;
    _data['image'] = image;
    _data['role_name'] = roleName;
    _data['first_name'] = firstName;
    _data['last_name'] = lastName;
    _data['city_name'] = cityName;
    _data['address'] = address;
    return _data;
  }
}
