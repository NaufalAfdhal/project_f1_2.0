import 'package:get/get.dart';
import '../services/auth_service.dart';

class AuthController extends GetxController {
  var isLoggedIn = false.obs;

  void login(String username, String password) async {
    bool success = await AuthService.login(username, password);
    if (success) {
      isLoggedIn.value = true;
      Get.offAllNamed('/home');
    } else {
      Get.snackbar("Error", "Login failed, check your credentials.");
    }
  }

  void logout() {
    isLoggedIn.value = false;
    Get.offAllNamed('/login');
  }
}
