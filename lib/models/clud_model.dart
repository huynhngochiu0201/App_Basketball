import 'package:app_basketball/models/personModel.dart';

class ClupModel {
  String? images;
  String? description;
  String? name;
  int? coachs;
  int? teams;
  int? players;
  String? title;
  String? subTitle;
  PersonModel? president;
  PersonModel? correspondent;
  PersonModel? aple;

  ClupModel();
}

ClupModel fakeClub = ClupModel()
  ..images = 'assets/images/avat.png'
  ..description =
      'Tell me all about this name, that is difficult to say It was given me the day I was bornWant to know about the stories of the empire of oldMy eyes say more of me than what you dare to say'
  ..name = 'Ngoc Hiu'
  ..coachs = 10
  ..teams = 10
  ..players = 100
  ..title = 'Tell me all about this name'
  ..subTitle =
      'Tell me all about this name, that is difficult to say It was given me the day I was bornWant to know about the stories of the empire of oldMy eyes say more of me than what you dare to say'
  ..president = person
  ..correspondent = person1
  ..aple = person2;
