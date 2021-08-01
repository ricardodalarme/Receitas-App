import 'package:desafio/data/models/recipe_model.dart';
import 'package:get/get_connect/connect.dart';

class EditRecipeRepository extends GetConnect {
  Future<List<Recipe>> getRecipe(int id) async {
    final response = await get('http://10.0.2.2:3000/recipes/$id', decoder: (body) {
      if (body is List) {
        return body.map<Recipe>((resp) => Recipe.fromJson(resp)).toList();
      }
      return <Recipe>[];
    });

    if (response.hasError) {
      throw Exception('Erro ao buscar usuários');
    }
    return response.body ?? <Recipe>[];
  }
}
