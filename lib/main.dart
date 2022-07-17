import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twitter_clone/global/controllers/initial_controllers.dart';
import 'package:twitter_clone/global/themes/theme.dart';
import 'package:twitter_clone/global/utils/routes.dart';

void main() {
  final InitialController _initialController = Get.put(InitialController(), permanent: true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Twitter',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: routes,
      builder: (context, widget) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: Theme(
              data: twitterTheme(context),
              child: Overlay(initialEntries: [
                OverlayEntry(builder: (context) => widget!),
              ])),
        );
      },
    );
  }
}
