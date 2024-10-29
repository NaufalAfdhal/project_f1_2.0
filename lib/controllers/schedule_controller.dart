import 'package:get/get.dart';
import '../models/race_schedule_model.dart';
import '../services/api_service.dart';

class ScheduleController extends GetxController {
  var raceSchedules = <RaceSchedule>[].obs;

  @override
  void onInit() {
    fetchSchedules();
    super.onInit();
  }

  void fetchSchedules() async {
    var fetchedSchedules = await ApiService.fetchRaceSchedules();
    raceSchedules.assignAll(fetchedSchedules);
  }
}
