import 'package:todo/src/features/home/data/i_home_provider.dart';
import 'package:todo/src/features/home/domain/entity/tasks_model.dart';
import 'dart:convert';
import '../domain/adapters/repository_adapter.dart';

class HomeRepository implements IHomeRepository {
  final IHomeProvider provider;
  HomeRepository({required this.provider});

  @override
  Future<TasksModel> getTasks() async {
    Map<String, dynamic> tasks = json.decode(
        await provider.getTasks('lib/src/features/home/data/tasks.json'));
    return TasksModel.fromJson(tasks);
  }
}
