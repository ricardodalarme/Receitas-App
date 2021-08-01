import 'package:desafio/data/models/recipe_model.dart';
import 'package:desafio/data/repositories/recipes_repository.dart';
import 'package:get/get.dart';

class RecipesController extends GetxController {
  final RecipesRepository _httpRepository;

  RecipesController(this._httpRepository);

  var categories = <Recipe>[].obs;

  @override
  void onInit() {
    super.onInit();
    getUsers();
  }

  Future<void> getUsers() async {
    try {
      categories.value = await _httpRepository.getAllRecipes();
    } catch (e) {
      print(e);
    }
  }
}
