import 'package:desafio/data/repositories/profile_repository.dart';
import 'package:desafio/modules/profile/profile_controller.dart';
import 'package:get/get.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ProfileRepository());
    Get.put(ProfileController(Get.find()));
  }
}
