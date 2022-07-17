import 'package:get/get.dart';
import 'package:twitter_clone/modules/home/home_view.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
    name: '/',
    page: () => HomeView(),
  )
];
