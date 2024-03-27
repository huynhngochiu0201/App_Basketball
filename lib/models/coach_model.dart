import 'category_model.dart';

class CoachModel {
  String? image;
  String? name;
  List<String>? skills;
  CategoryModel? category;

  CoachModel();
}

List<CoachModel> coaches = [
  CoachModel()
    ..image = 'assets/images/avat.png'
    ..name = 'Esther Howard'
    ..skills = ['D-Fence', 'Spare Balls']
    ..category = categories[0],
  CoachModel()
    ..image = 'assets/images/avat.png'
    ..name = 'Robert Fox'
    ..skills = ['D-Fence', 'Spare Balls']
    ..category = categories[1],
  CoachModel()
    ..image = 'assets/images/avat.png'
    ..name = 'Ronald Richards'
    ..skills = ['D-Fence', 'Spare Balls']
    ..category = categories[2],
  CoachModel()
    ..image = 'assets/images/avat.png'
    ..name = 'Ronald Richards'
    ..skills = ['D-Fence', 'Spare Balls']
    ..category = categories[2],
  CoachModel()
    ..image = 'assets/images/avat.png'
    ..name = 'Ronald Richards'
    ..skills = ['D-Fence', 'Spare Balls']
    ..category = categories[2],
  CoachModel()
    ..image = 'assets/images/avat.png'
    ..name = 'Ronald Richards'
    ..skills = ['D-Fence', 'Spare Balls']
    ..category = categories[2],
  CoachModel()
    ..image = 'assets/images/avat.png'
    ..name = 'Ronald Richards'
    ..skills = ['D-Fence', 'Spare Balls']
    ..category = categories[2],
];
