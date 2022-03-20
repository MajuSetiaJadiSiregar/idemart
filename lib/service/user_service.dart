part of "service.dart";

class UserService {
  static Future<ApiReturnValue> registerUser(String firstname, String lastname, String username, String password) async {
    final response = await http.post(
        Uri.parse(Endpoint.apiRegister),
        headers: <String, String> {
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(<String, String>{
          "firstname" : firstname,
          "lastname" : lastname,
          "username" : username,
          "password" : password
        })
    );

    switch(response.statusCode){
      case 200:
        return ApiReturnValue(value: RegisterModel.fromJson(jsonDecode(response.body)));
      case 400:
        return ApiReturnValue(value: RegisterModel.fromJson(jsonDecode(response.body)));
      default:
        throw Exception('Failed to create album.');
    }
  }

  static Future<ApiReturnValue> loginUser(String username, String password) async {
    final response = await http.post(
        Uri.parse(Endpoint.apiLogin),
        headers: <String, String> {
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(<String, String>{
          "username" : username,
          "password" : password
        })
    );

    switch(response.statusCode){
      case 200:
        return ApiReturnValue(value: LoginSuccessModel.fromJson(jsonDecode(response.body)));
      case 400:
        return ApiReturnValue(value: LoginErrorModel.fromJson(jsonDecode(response.body)));
      default:
        throw Exception('Failed to create album.');
    }
  }
}