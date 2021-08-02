import 'package:desafio/core/values/end_points.dart';
import 'package:desafio/data/models/category_model.dart';
import 'package:desafio/data/models/recipe_model.dart';
import 'package:get/get_connect/connect.dart';

class RecipesRepository extends GetConnect {
  Future<List<Recipe>> getAllRecipes(int id) async {
    final response = await get('${EndPoints.recipes}?categoryId=$id',
        decoder: (body) {
      if (body is List) {
        return body.map<Recipe>((resp) => Recipe.fromJson(resp)).toList();
      }
      return <Recipe>[];
    });

    if (response.hasError) {
      throw Exception('Erro ao buscar receitas');
    }
    return response.body ?? <Recipe>[];
  }

  Future<List<Category>> getAllCategories() async {
    final response =
        await get(EndPoints.categories, decoder: (body) {
      if (body is List) {
        return body.map<Category>((resp) => Category.fromJson(resp)).toList();
      }
      return <Category>[];
    });

    if (response.hasError) {
      throw Exception('Erro ao buscar categorias');
    }
    return response.body ?? <Category>[];
  }
}
