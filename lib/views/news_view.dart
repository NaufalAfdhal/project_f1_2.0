import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/news_controller.dart';

class NewsView extends StatelessWidget {
  final NewsController newsController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background to black
      appBar: AppBar(
        title: Text('News', style: TextStyle(color: Colors.red)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Obx(() {
        if (newsController.newsList.isEmpty) {
          return Center(
            child: CircularProgressIndicator(color: Colors.red),
          );
        }

        return ListView.builder(
          itemCount: newsController.newsList.length,
          itemBuilder: (context, index) {
            final news = newsController.newsList[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900], // Dark grey container
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(news.imageUrl),
                    radius: 30,
                  ),
                  title: Text(
                    news.title,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  subtitle: Text(
                    news.content,
                    style: TextStyle(color: Colors.grey[400]), // Subtle grey text
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text(
                    "${news.publishedDate.day}/${news.publishedDate.month}/${news.publishedDate.year}",
                    style: TextStyle(color: Colors.grey[400]),
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
