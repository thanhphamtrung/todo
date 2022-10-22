import 'package:get/get.dart';
import 'package:todo/src/features/home/domain/entity/tasks_model.dart';

import '../../domain/adapters/repository_adapter.dart';

class HomeController extends GetxController {
  HomeController({required this.homeRepository});
  List<Task> tasks = <Task>[].obs;
  var isLoading = true.obs;

  final IHomeRepository homeRepository;

  @override
  void onInit() async {
    super.onInit();
    getTasksFromLocal();
  }

  Future<void> getTasksFromLocal() async {
    var taskModel = await homeRepository.getTasks();
    if (taskModel.task != null) {
      tasks = taskModel.task!;
    } else {
      tasks = [];
    }
    isLoading.value = false;
  }
}
