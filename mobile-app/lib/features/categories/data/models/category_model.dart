class CategoryModel {
  final String name;
  final String image;
  void Function() onTap;

  CategoryModel({
    required this.name,
    required this.image,
    required this.onTap,
  });
}
