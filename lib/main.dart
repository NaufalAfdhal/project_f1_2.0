import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bindings/intial_bindings.dart'; // Import binding untuk inisialisasi
import 'views/login_view.dart';
import 'views/home_view.dart';
import 'views/profile_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Formula 1 App',
      initialBinding: InitialBindings(),
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/login', page: () => LoginView()),
        GetPage(name: '/home', page: () => HomeView()),
        GetPage(name: '/profile', page: () => ProfileView()),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black, // Warna utama
        hintColor: Colors.red, // Warna aksen
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
