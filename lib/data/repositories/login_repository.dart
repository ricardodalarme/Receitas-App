import 'package:desafio/core/values/end_points.dart';
import 'package:desafio/data/models/profile_model.dart';
import 'package:get/get_connect/connect.dart';

class LoginRepository extends GetConnect {
  Future<void> postProfile(Map data) async {
    final response = await post(EndPoints.profiles, data);

    if (response.hasError) {
      throw Exception('Erro ao criar perfil');
    }
  }

  Future<Profile> getProfile(String id) async {
    final response = await get('${EndPoints.profiles}/$id');

    if (response.hasError) {
      throw Exception('Erro ao obter perfil');
    }

    return Profile.fromJson(response.body);
  }
}
