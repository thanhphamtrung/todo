// ignore: one_member_abstracts
import 'package:todo/src/features/home/domain/entity/tasks_model.dart';

abstract class IHomeRepository {
  Future<TasksModel> getTasks();
}
