import 'package:get/get.dart';
import '../models/driver_model.dart';
import '../services/api_service.dart';

class DriverController extends GetxController {
  var drivers = <Driver>[].obs;

  @override
  void onInit() {
    fetchDrivers();
    super.onInit();
  }

  void fetchDrivers() async {
    var fetchedDrivers = await ApiService.fetchDrivers();
    drivers.assignAll(fetchedDrivers);
  }
}
