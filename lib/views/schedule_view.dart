import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/schedule_controller.dart';

class ScheduleView extends StatelessWidget {
  final ScheduleController scheduleController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background to black
      appBar: AppBar(
        title: Text('Race Schedule', style: TextStyle(color: Colors.red)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Obx(() {
        if (scheduleController.raceSchedules.isEmpty) {
          return Center(
            child: CircularProgressIndicator(color: Colors.red),
          );
        }

        return ListView.builder(
          itemCount: scheduleController.raceSchedules.length,
          itemBuilder: (context, index) {
            final race = scheduleController.raceSchedules[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900], // Dark grey container
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(16), // Add padding inside the ListTile
                  title: Text(
                    race.raceName,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  subtitle: Text(
                    "${race.circuit} - ${race.date.day}/${race.date.month}/${race.date.year}",
                    style: TextStyle(color: Colors.grey[400]), // Subtle grey text
                  ),
                  trailing: Text(
                    race.time,
                    style: TextStyle(color: Colors.red), // Highlight the time
                  ),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
