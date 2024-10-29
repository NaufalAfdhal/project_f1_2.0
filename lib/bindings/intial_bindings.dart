import 'package:get/get.dart';
import '../controllers/driver_controller.dart';
import '../controllers/team_controller.dart';
import '../controllers/schedule_controller.dart';
import '../controllers/profile_controller.dart';
import '../controllers/news_controller.dart';
import '../controllers/auth_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    // Inisialisasi semua controller
    Get.put(DriverController());
    Get.put(TeamController());
    Get.put(ScheduleController());
    Get.put(ProfileController());
    Get.put(NewsController());
    Get.put(AuthController());
  }
}
