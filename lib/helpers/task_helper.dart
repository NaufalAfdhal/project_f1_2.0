import '../models/task_model.dart';

class TaskHelper {
  // Simpan list task sementara sebagai variabel instance, bukan statis
  List<TaskModel> tasks = [];

  // Menambahkan task baru
  void addTask(TaskModel task) {
    tasks.add(task);
  }

  // Mengambil semua task
  List<TaskModel> getAllTasks() {
    return tasks;
  }

  // Menghapus task berdasarkan ID
  void removeTask(String id) {
    tasks.removeWhere((task) => task.id == id);
  }

  // Mengubah status task menjadi selesai
  void markTaskAsCompleted(String id) {
    final index = tasks.indexWhere((task) => task.id == id);
    if (index != -1) {
      tasks[index] = TaskModel(
        id: tasks[index].id,
        title: tasks[index].title,
        description: tasks[index].description,
        deadline: tasks[index].deadline,
        isCompleted: true,
      );
    }
  }

  // Toggle untuk menyelesaikan atau membatalkan penyelesaian task
  void toggleTaskCompletion(String id) {
    final index = tasks.indexWhere((task) => task.id == id);
    if (index != -1) {
      tasks[index] = TaskModel(
        id: tasks[index].id,
        title: tasks[index].title,
        description: tasks[index].description,
        deadline: tasks[index].deadline,
        isCompleted: !tasks[index].isCompleted, // Toggle isCompleted
      );
    }
  }
}
