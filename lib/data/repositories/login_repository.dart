import 'package:desafio/data/models/profile_model.dart';
import 'package:get/get_connect/connect.dart';

class LoginRepository extends GetConnect {
  Future<void> postProfile(Map data) async {
    final response = await post('http://10.0.2.2:3000/profiles', data);

    if (response.hasError) {
      throw Exception('Erro ao buscar usuários');
    }
  }

  Future<Profile> getProfile(String id) async {
    final response = await get('http://10.0.2.2:3000/profiles/$id');

    if (response.hasError) {
      throw Exception('Erro ao buscar usuários');
    }

    return Profile.fromJson(response.body);
  }
}
