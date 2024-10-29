import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/profile_controller.dart';
import 'favorite_driver_view.dart';
import '../models/profile_model.dart'; // Ensure you import your DriverProfile model

class ProfileView extends StatelessWidget {
  final ProfileController profileController = Get.find();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isTablet = screenWidth > 600; // Use GridView for tablet or larger screens

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Driver Profiles', style: TextStyle(color: Colors.red)),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.red),
            onPressed: () {
              Get.to(() => FavoriteDriversView());
            },
          ),
        ],
      ),
      body: Obx(() {
        if (profileController.driverProfiles.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(color: Colors.red),
          );
        }

        // Use GridView on tablets and ListView on mobile
        return isTablet
            ? GridView.builder(
          padding: const EdgeInsets.all(8),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Two columns for tablet
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 3 / 2, // Set aspect ratio of GridView items
          ),
          itemCount: profileController.driverProfiles.length,
          itemBuilder: (context, index) {
            final profile = profileController.driverProfiles[index];
            return _buildProfileItem(profile);
          },
        )
            : ListView.builder(
          itemCount: profileController.driverProfiles.length,
          itemBuilder: (context, index) {
            final profile = profileController.driverProfiles[index];
            return _buildProfileItem(profile);
          },
        );
      }),
    );
  }

  // Widget to create profile item
  Widget _buildProfileItem(DriverProfile profile) {
    final isFavorite = profileController.isFavorite(profile); // Check if the profile is a favorite

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(16),
          leading: ClipOval(
            child: Image.network(
              profile.imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Icon(Icons.error, color: Colors.red),
            ),
          ),
          title: Text(
            profile.name,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          subtitle: Text(
            "${profile.team} - ${profile.nationality}",
            style: TextStyle(color: Colors.grey[400]),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "#${profile.number}",
                style: const TextStyle(color: Colors.red),
              ),
              IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.white,
                ),
                onPressed: () {
                  profileController.toggleFavorite(profile); // Toggle favorite status
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
