class CategoryModel {
  String? id;
  String? title;

  CategoryModel();
}

List<CategoryModel> categories = [
  CategoryModel()
    ..id = '1'
    ..title = 'Rookie',
  CategoryModel()
    ..id = '2'
    ..title = 'Sophomore',
  CategoryModel()
    ..id = '3'
    ..title = 'Allstar',
  CategoryModel()
    ..id = '4'
    ..title = 'Superstar',
  CategoryModel()
    ..id = '5'
    ..title = 'Mario',
];
