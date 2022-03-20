part of "controller.dart";

class UserRegisterController extends GetxController {
  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();


  void handleRegisterUser() async{
    try{
      var response = await UserService.registerUser(firstname.text, lastname.text, username.text, password.text);
      print(response.value);
    }catch(e){
      print(e);
    }
  }
}