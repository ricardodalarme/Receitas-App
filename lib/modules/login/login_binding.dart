import 'package:desafio/data/repositories/login_repository.dart';
import 'package:desafio/modules/login/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginRepository());
    Get.put(LoginController(Get.find()));
  }
}
