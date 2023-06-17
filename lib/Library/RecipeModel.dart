class RecipeModel{
  final String id;
  final String title;
  final String description;
  // final String dueDate;
  final String category;
  bool status;

  RecipeModel({
    required this.id,
    required this.title,
    required this.description,
    // required this.dueDate,
    required this.category,
    required this.status,
  });
}