class TasksModel {
  List<Task>? task;

  TasksModel({this.task});

  TasksModel.fromJson(Map<String, dynamic> json) {
    if (json['task'] != null) {
      task = <Task>[];
      json['task'].forEach((v) {
        task!.add(Task.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (task != null) {
      data['task'] = task!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Task {
  String? title;
  String? content;
  String? createTime;

  Task({this.title, this.content, this.createTime});

  Task.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    content = json['content'];
    createTime = json['createTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['content'] = content;
    data['createTime'] = createTime;
    return data;
  }
}
