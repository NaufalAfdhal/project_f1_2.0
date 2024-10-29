import 'package:get/get.dart';
import '../models/team_model.dart';
import '../services/api_service.dart';

class TeamController extends GetxController {
  var teams = <Team>[].obs;

  @override
  void onInit() {
    fetchTeams();
    super.onInit();
  }

  void fetchTeams() async {
    var fetchedTeams = await ApiService.fetchTeams();
    teams.assignAll(fetchedTeams);
  }
}
