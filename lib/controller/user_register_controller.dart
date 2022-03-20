part of "controller.dart";

class UserRegisterController extends GetxController {
  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();


  void handleRegisterUser() async{
    try{
      var response = await UserService.registerUser(firstname.text, lastname.text, username.text, password.text);
      if(response.value.message != null){
        Get.snackbar("Information", (response.value?.message != null) ? response.value.message.toString() : "Testing",  backgroundColor: Colors.green);
      }

    }catch(e){
      print(e);
    }
  }
}