import 'package:task_manager/models/task_models.dart';

class TodayTask {
  final Task task;
  final String text;
  final bool isFinish;
  final bool isNew;

  TodayTask({
    this.task,
    this.text,
    this.isFinish,
    this.isNew,
  });
}

final Task ardu = Task(
  code: 1,
  ad: "ArduComan Sie",
  shekil: '',
);

final Task learning = Task(
  code: 2,
  ad: 'Learn Flutter',
  shekil: '',
);
final Task party = Task(
  code: 2,
  ad: 'Go to Ricks Part',
  shekil: '',
);
final Task home = Task(
  code: 2,
  ad: 'Go to Ricks Part',
  shekil: '',
);
final Task work = Task(
  code: 2,
  ad: 'Go to Ricks Part',
  shekil: '',
);

List<TodayTask> tasks = [
  TodayTask(
    task: ardu,
    text: 'We have to finish our new project',
    isFinish: false,
    isNew: false,
  ),
  TodayTask(
    task: learning,
    text: 'Lets learn Flutter',
    isFinish: false,
    isNew: false,
  ),
  TodayTask(
    task: party,
    text: 'Lets go Riks Party',
    isFinish: true,
    isNew: true,
  ),
  TodayTask(
    task: home,
    text: 'Lets go Riks Party',
    isFinish: true,
    isNew: true,
  ),
  TodayTask(
    task: work,
    text: 'Lets go Riks Party',
    isFinish: true,
    isNew: true,
  ),
];
