import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/profile_model.dart';
import '../services/api_service.dart';

class ProfileController extends GetxController {
  var driverProfiles = <DriverProfile>[].obs;
  var favoriteDrivers = <DriverProfile>[].obs; // List of favorite drivers

  @override
  void onInit() {
    fetchProfiles();
    super.onInit();
  }

  // Fetch driver profiles from API
  void fetchProfiles() async {
    var fetchedProfiles = await ApiService.fetchDriverProfiles();
    driverProfiles.assignAll(fetchedProfiles);
  }

  // Add or remove driver from favorites
  void toggleFavorite(DriverProfile driver) {
    if (favoriteDrivers.contains(driver)) {
      // Show confirmation dialog
      Get.defaultDialog(
        title: "Confirm Removal",
        middleText: "Are you sure you want to remove ${driver.name} from favorites?",
        onConfirm: () {
          favoriteDrivers.remove(driver); // Remove from favorites
          Get.snackbar(
            "Removed from Favorites",
            "${driver.name} has been removed from favorites",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
          Get.back(); // Close the dialog
        },
        onCancel: () => Get.back(), // Close dialog if canceled
        confirm: TextButton(
          onPressed: () {
            favoriteDrivers.remove(driver); // Confirm removal
            Get.snackbar(
              "Removed from Favorites",
              "${driver.name} has been removed from favorites",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.red,
              colorText: Colors.white,
            );
            Get.back(); // Close the dialog
          },
          child: Text("Yes", style: TextStyle(color: Colors.green)),
        ),
        cancel: TextButton(
          onPressed: () => Get.back(),
          child: Text("No", style: TextStyle(color: Colors.red)),
        ),
      );
    } else {
      favoriteDrivers.add(driver); // Add to favorites
      Get.snackbar(
        "Added to Favorites",
        "${driver.name} has been added to favorites",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }
  }

  // Check if driver is in favorites
  bool isFavorite(DriverProfile driver) {
    return favoriteDrivers.contains(driver);
  }
}
