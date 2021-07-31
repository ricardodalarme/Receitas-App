class Recipe {
  final String name;
  Duration time;
  int ingredients;
  String imageUrl;

  Recipe({
    required this.name,
    required this.time,
    required this.ingredients,
    required this.imageUrl,
  });
}
