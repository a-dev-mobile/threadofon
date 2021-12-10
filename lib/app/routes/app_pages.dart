import 'package:get/get.dart';
import 'package:threadofon/presentation/home/home_screen.dart';
import 'package:threadofon/presentation/home/view/setting/view/setting_view.dart';
import 'package:threadofon/presentation/welcome/view/welcome_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      preventDuplicates: true,
      name: _Paths.HOME,
      page: () => const HomeScreen(),
      bindings: const [
        // HomeBinding(),
      ],
      title: null,
      children: [
        GetPage(
          name: _Paths.SETTINGS,
          page: () => const SettingView(),
          // binding: SettingsBinding(),
        ),
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
