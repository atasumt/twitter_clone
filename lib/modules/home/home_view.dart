import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twitter_clone/global/common/app_bar.dart';
import 'package:twitter_clone/global/common/bottom_navigation_bar.dart';
import 'package:twitter_clone/global/controllers/initial_controllers.dart';
import 'package:twitter_clone/modules/home/pages/home_page/home_page_view.dart';
import 'package:twitter_clone/modules/home/pages/messag_page/messag_page_view.dart';
import 'package:twitter_clone/modules/home/pages/notifications_page/notifications_page_view.dart';
import 'package:twitter_clone/modules/home/pages/search_page/search_page_view.dart';

class HomeView extends StatelessWidget {
  final InitialController _initialController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: appBar(context, _initialController.currentPage.value),
          bottomNavigationBar: GlobalBottomNavigationBar(),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {},
          ),
          body: _initialController.currentPage.value == 0
              ? const HomePageView()
              : _initialController.currentPage.value == 1
                  ? SearchPageView()
                  : _initialController.currentPage.value == 2
                      ? NotificationsPageView()
                      : _initialController.currentPage.value == 3
                          ? MessagePageView()
                          : Container(),
        ));
  }
}
