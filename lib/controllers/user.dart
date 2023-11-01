import 'package:demonstration/models/user.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  var user = Rx<UserModel?>(null);

  login() {
    user.value = UserModel()
      ..id = 1
      ..email = "email@email.com"
      ..name = "Name";
    update();
  }

  logout() {}
}
