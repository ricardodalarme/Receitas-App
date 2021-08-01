import 'package:desafio/data/models/category_model.dart';
import 'package:desafio/data/repositories/profile_repository.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final ProfileRepository _httpRepository;

  ProfileController(this._httpRepository);

  var categories = <Category>[].obs;

  @override
  void onInit() {
    super.onInit();
    getCategories();
  }

  Future<void> getCategories() async {
    try {
      categories.value = await _httpRepository.getAllCategories();
    } catch (e) {
      print(e);
    }
  }
}
