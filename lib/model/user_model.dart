part of "model.dart";

class RegisterModel {
  bool status;
  String message;

  RegisterModel({required this.status, required this.message});

  factory RegisterModel.fromJson(Map<String, dynamic> json){
    return RegisterModel(status: json["status"], message: json["message"]);
  }
}

class RegisterPasswordErrorModel {
  bool status;
  String data;

  RegisterPasswordErrorModel({required this.status, required this.data});

  factory RegisterPasswordErrorModel.fromJson(Map<String, dynamic> json){
    return RegisterPasswordErrorModel(status: json["status"], data: json["data"]);
  }
}

class LoginSuccessModel {
  bool status;
  String message;
  String token;
  UserLogin userLogin;

  LoginSuccessModel({required this.status, required this.message, required this.token, required this.userLogin});

  factory LoginSuccessModel.fromJson(Map<String, dynamic> json){
    return LoginSuccessModel(status: json["status"], message: json["message"], token: json["token"], userLogin: UserLogin.fromJson(json["user"]));
  }
}

class UserLogin {
  dynamic id;
  dynamic firstname;
  dynamic lastname;
  dynamic phone;
  dynamic email;
  dynamic username;
  dynamic profesion;
  dynamic role;
  dynamic profile_picuter;

  UserLogin({required this.id, required this.firstname, required this.lastname, required this.phone, required this.email, required this.username, required this.profesion, required this.profile_picuter, required this.role});

  factory UserLogin.fromJson(Map<String, dynamic> json){
    return UserLogin(
        id: json["id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        phone: json["phone"],
        email: json["email"],
        username: json["username"],
        profesion: json["profesion"],
        profile_picuter: json["profile_picuter"],
        role: json["role"]
    );
  }
}

class LoginErrorModel {
  bool status;
  String message;

  LoginErrorModel({required this.status, required this.message});

  factory LoginErrorModel.fromJson(Map<String, dynamic> json){
    return LoginErrorModel(status: json["status"], message: json["message"]);
  }
}
