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
