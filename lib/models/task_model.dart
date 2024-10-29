class TaskModel {
  final String id;
  final String title;
  final String description;
  final DateTime deadline;
  final bool isCompleted;

  TaskModel({
    required this.id,
    required this.title,
    required this.description,
    required this.deadline,
    this.isCompleted = false,
  });
}
