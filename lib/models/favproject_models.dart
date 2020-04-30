import 'package:task_manager/models/project_models.dart';

class FavProject {
  final Project task;

  FavProject({this.task});
}

//Projects

final Project green = Project(
  id: 1,
  name: 'Green House',
  imgUrl: 'assets/images/gh.png',
);
final Project cyber = Project(
  id: 2,
  name: 'Cyber Punk',
  imgUrl: 'assets/images/cp.png',
);

final Project easy = Project(
  id: 3,
  name: 'Easy Crypto',
  imgUrl: 'assets/images/ec.png',
);
final Project langind = Project(
  id: 4,
  name: 'Langing Project',
  imgUrl: 'assets/images/cp1.png',
);

final Project time = Project(
  id: 5,
  name: 'Time management',
  imgUrl: 'assets/images/tm.png',
);

final Project startup = Project(
  id:6,
  name:'Start Up',
  imgUrl: 'assets/images/gh2.png',
);

List<Project> favproject =[
  easy,
  green,
  cyber,
  startup,
  langind,
  time,
];