part of "model.dart";

class RegisterModel {
  String status;
  String message;

  RegisterModel({required this.status, required this.message});

  factory RegisterModel.fromJson(Map<String, dynamic> json){
    return RegisterModel(status: json["status"], message: json["message"]);
  }
}
