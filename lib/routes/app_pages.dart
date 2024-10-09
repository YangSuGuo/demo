import 'package:get/get.dart';

import '../pages/main/main.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: Routes.MAIN,
      page: () => const Main(),
    ),
  ];
}
