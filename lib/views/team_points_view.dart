import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/team_controller.dart';

class TeamPointsView extends StatelessWidget {
  final TeamController teamController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background to black
      appBar: AppBar(
        title: Text('Team Points', style: TextStyle(color: Colors.red)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Obx(() {
        if (teamController.teams.isEmpty) {
          return Center(
            child: CircularProgressIndicator(color: Colors.red),
          );
        }

        return ListView.builder(
          itemCount: teamController.teams.length,
          itemBuilder: (context, index) {
            final team = teamController.teams[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900], // Dark grey container
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(16), // Add padding inside the ListTile
                  leading: Image.network(
                    team.logoUrl,
                    width: 50, // Set a fixed width for the logo
                    height: 50, // Set a fixed height for the logo
                    fit: BoxFit.cover, // Maintain the aspect ratio
                  ),
                  title: Text(
                    team.name,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  subtitle: Text(
                    "${team.points} points",
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
