// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:threadofon/modules/home/home_binding.dart';
import 'package:threadofon/modules/home/home_page.dart';
import 'package:threadofon/modules/welcome/view/welcome_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
  
      name: _Paths.HOME,
      page: () => const HomePage(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeScreen(),
      bindings: const [
        // HomeBinding(),
      ],
    )
  ];
}
