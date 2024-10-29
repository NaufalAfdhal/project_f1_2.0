import 'package:get/get.dart';
import '../models/news_model.dart';
import '../services/api_service.dart';

class NewsController extends GetxController {
  var newsList = <News>[].obs;

  @override
  void onInit() {
    fetchNews();
    super.onInit();
  }

  void fetchNews() async {
    var fetchedNews = await ApiService.fetchNews();
    newsList.assignAll(fetchedNews);
  }
}
