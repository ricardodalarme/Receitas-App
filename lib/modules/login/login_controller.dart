import 'package:desafio/data/models/profile_model.dart';
import 'package:desafio/data/repositories/login_repository.dart';
import 'package:desafio/routes/routes.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final LoginRepository _httpRepository;

  LoginController(this._httpRepository);

  Future<void> login() async {
    await FacebookAuth.instance.login(permissions: [
      'public_profile',
      'email',
    ]);
    final userData = await FacebookAuth.instance.getUserData();
    var profile = Profile.fromFacebook(userData);

    try {
      await _httpRepository.postProfile(profile.toJson());
    } catch (e) {
      profile = await _httpRepository.getProfile(profile.id);
    }

    // muda de tela
    Get.offAllNamed(Routes.profile, arguments: profile);
  }
}
