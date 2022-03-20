part of "controller.dart";

class UserLoginController extends GetxController {

  final loginSuccess = LoginSuccessModel(status: false, message: "", token: "", userLogin: UserLogin(id:"", firstname: "", lastname: "", phone: "", email: "", username: "", profesion: "", profile_picuter: "", role: "")).obs;


  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  void handleLoginUser() async{
    try{
      var response = await UserService.loginUser(username.text, password.text);
      if(response.value.status){
        Get.snackbar("Information", "${response.value.userLogin.firstname} ${response.value.message}",  backgroundColor: Colors.green);

        loginSuccess.update((_) {
          loginSuccess.value.userLogin = response.value.userLogin;
        });
        Get.off(() => HomeScreen(), transition: Transition.downToUp, duration: Duration(seconds: 3));
      } else {
        Get.snackbar("Information", response.value.message,  backgroundColor: Colors.red);
      }
    }catch(e){
      print(e);
    }
  }
  void handleGotoRegister(){
    Get.to(() => RegisterScreen());
  }

  void clearInput(){
    username.clear();
    password.clear();
  }
}