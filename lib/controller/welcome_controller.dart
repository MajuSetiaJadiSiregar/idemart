part of 'controller.dart';

class WelcomeController extends GetxController {

  void handleGotoLogin(){
    Get.to(() => LoginScreen());
  }

  void handleGotoRegister(){
    Get.to(() => RegisterScreen());
  }
}