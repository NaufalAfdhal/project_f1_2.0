import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/driver_controller.dart';

class DriverPointsView extends StatelessWidget {
  final DriverController driverController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background to black
      appBar: AppBar(
        title: Text('Driver Standings', style: TextStyle(color: Colors.red)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Obx(() {
        if (driverController.drivers.isEmpty) {
          return Center(
            child: CircularProgressIndicator(color: Colors.red),
          );
        }

        return ListView.builder(
          itemCount: driverController.drivers.length,
          itemBuilder: (context, index) {
            final driver = driverController.drivers[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900], // Dark grey container
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(16), // Add padding inside the ListTile
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(driver.imageUrl),
                    radius: 30, // Set a fixed radius for the avatar
                  ),
                  title: Text(
                    driver.name,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  subtitle: Text(
                    "${driver.team} - ${driver.points} points",
                    style: TextStyle(color: Colors.grey[400]), // Subtle grey text
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
