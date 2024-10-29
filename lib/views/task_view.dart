import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../helpers/task_helper.dart';
import '../models/task_model.dart';

class TaskView extends StatelessWidget {
  final TaskHelper taskHelper = Get.find<TaskHelper>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task List'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Tambahkan task baru menggunakan instance taskHelper
              taskHelper.addTask(
                TaskModel(
                  id: DateTime.now().millisecondsSinceEpoch.toString(),
                  title: 'New Task',
                  description: 'Description of new task',
                  deadline: DateTime.now().add(const Duration(days: 1)),
                ),
              );
            },
          )
        ],
      ),
      body: Obx(() {
        // Jika tidak ada task, tampilkan pesan
        if (taskHelper.tasks.isEmpty) {
          return const Center(child: Text('No tasks available.'));
        }

        // Tampilkan daftar task
        return ListView.builder(
          itemCount: taskHelper.tasks.length,
          itemBuilder: (context, index) {
            final task = taskHelper.tasks[index];
            return ListTile(
              title: Text(task.title),
              subtitle: Text(
                "${task.description}\nDue: ${task.deadline.toLocal()}",
                style: const TextStyle(fontSize: 12),
              ),
              trailing: Checkbox(
                value: task.isCompleted,
                onChanged: (value) {
                  taskHelper.toggleTaskCompletion(task.id);
                },
              ),
              onTap: () {
                // Aksi saat task di-tap (misalnya buka detail)
              },
            );
          },
        );
      }),
    );
  }
}
