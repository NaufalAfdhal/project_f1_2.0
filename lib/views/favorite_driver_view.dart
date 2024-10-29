import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/profile_controller.dart';

class FavoriteDriversView extends StatelessWidget {
  final ProfileController profileController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background to black
      appBar: AppBar(
        title: const Text('Favorite Drivers', style: TextStyle(color: Colors.red)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Obx(() {
        if (profileController.favoriteDrivers.isEmpty) {
          return const Center(
            child: Text(
              'No favorite drivers.',
              style: TextStyle(color: Colors.white),
            ),
          );
        }

        return ListView.builder(
          itemCount: profileController.favoriteDrivers.length,
          itemBuilder: (context, index) {
            final profile = profileController.favoriteDrivers[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900], // Dark grey container
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16),
                  leading: Image.network(
                    profile.imageUrl,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    profile.name,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  subtitle: Text(
                    "${profile.team} - ${profile.nationality}",
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.favorite, color: Colors.red),
                    onPressed: () {
                      profileController.toggleFavorite(profile); // Hapus dari favorit
                    },
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
