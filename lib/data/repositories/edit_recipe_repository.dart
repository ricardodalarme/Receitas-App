import 'package:desafio/data/models/ingredient_model.dart';
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

  Future<List<Ingredient>> getIngredients(List<int> ingredientsId) async {
    var query = '?';
    for (final i in ingredientsId) {
      query += 'id=$i&';
    }

    final response =
        await get('http://10.0.2.2:3000/ingredients$query', decoder: (body) {
      if (body is List) {
        return body
            .map<Ingredient>((resp) => Ingredient.fromJson(resp))
            .toList();
      }
      return <Ingredient>[];
    });

    if (response.hasError) {
      throw Exception('Erro ao buscar usuários');
    }
    return response.body ?? <Ingredient>[];
  }
}
