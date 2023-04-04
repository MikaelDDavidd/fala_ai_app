class CategoryModel {
  final String name;

  CategoryModel({required this.name});

  static List<CategoryModel> getCategories() {
    return [
      CategoryModel(name: "Anime"),
      CategoryModel(name: "Desenho animado"),
    ];
  }
}
