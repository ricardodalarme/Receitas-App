import 'package:desafio/data/models/category_model.dart';
import 'package:desafio/data/models/recipe_model.dart';
import 'package:get/get_connect/connect.dart';

class RecipesRepository extends GetConnect {
  Future<List<Recipe>> getAllRecipes(int id) async {
    final response = await get('http://10.0.2.2:3000/recipes?categoryId=$id',
        decoder: (body) {
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

  Future<List<Category>> getAllCategories() async {
    final response =
        await get('http://10.0.2.2:3000/categories', decoder: (body) {
      if (body is List) {
        return body.map<Category>((resp) => Category.fromJson(resp)).toList();
      }
      return <Category>[];
    });

    if (response.hasError) {
      throw Exception('Erro ao buscar usuários');
    }
    return response.body ?? <Category>[];
  }
}
