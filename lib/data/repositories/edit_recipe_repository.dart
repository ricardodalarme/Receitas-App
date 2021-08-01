import 'package:desafio/data/models/recipe_model.dart';
import 'package:get/get_connect/connect.dart';

class EditRecipeRepository extends GetConnect {
  Future<Recipe> getRecipe(int id) async {
    final response = await get('http://10.0.2.2:3000/recipes/$id');
    if (response.hasError) {
      throw Exception('Erro ao buscar usuários');
    }

    return Recipe.fromJson(response.body);
  }
}
