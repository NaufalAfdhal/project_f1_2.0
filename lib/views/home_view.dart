import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/bottom_navbar.dart';
import 'driver_points_view.dart';
import 'team_points_view.dart';
import 'schedule_view.dart';
import 'news_view.dart';

class HomeView extends StatelessWidget {
  final AuthController authController = Get.find();

  final List<Widget> _pages = [
    DriverPointsView(),
    TeamPointsView(),
    ScheduleView(),
    NewsView(),
  ];

  final RxInt _selectedIndex = 0.obs;

  void _onItemTapped(int index) {
    _selectedIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Scaffold(
        appBar: AppBar(
          title: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/F1.svg/1200px-F1.svg.png', // URL to the F1 logo
            height: 40, // Adjust height as needed
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Container(
          color: Colors.black, // Set background color for body
          child: _pages[_selectedIndex.value],
        ),
        bottomNavigationBar: BottomNavbar(
          onTap: _onItemTapped,
          currentIndex: _selectedIndex.value, // Pass current index to the navbar
        ),
        drawer: CustomDrawer(),
      ),
    );
  }
}
