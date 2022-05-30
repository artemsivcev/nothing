import 'package:get/get.dart';

import '../../../data/models/user.dart';
import 'open_widgets_controller.dart';

class UserController extends GetxController {
  final openWidgetsController = Get.find<OpenWidgetsController>();
  ///user login
  ///
  RxBool isUserLoggedIn = false.obs;
  RxString userLogin = "".obs;
  Rx<User?> currentUser = (null as User?).obs;

  void updateUserLogin(String login) {
    userLogin.value = login;
  }

  void login() {
    openWidgetsController.isUserLoginOpen.value = false;
    currentUser.value = User(userLogin.value, "email@email.com");
    isUserLoggedIn.value = true;

  }

  void logout() {
    openWidgetsController.isUserLoginOpen.value = false;
    currentUser.value = (null as User?);
    isUserLoggedIn.value = false;
    userLogin.value = "";
  }
}
