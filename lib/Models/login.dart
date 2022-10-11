class LoginModel {
  late bool status;
  late String massege;
  UserDataModel? userData;
  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    massege = json['massege'];
    userData = json['student-data'] != null
        ? UserDataModel.fromJson(json['student-data'])
        : null;
  }
}

class UserDataModel {
  late int id;
  late String? name;
  late String? number;
  UserDataModel.fromJson(List<dynamic> list) {
    for (var element in list) {
      id = element['id'];
      name = element['name'];
      number = element['number'];
    }
  }
}
