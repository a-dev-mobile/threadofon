// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:threadofon/modules/home/bindings/home_binding.dart';
import 'package:threadofon/modules/home/view/home_page.dart';
import 'package:threadofon/modules/root/bindings/root_binding.dart';
import 'package:threadofon/modules/root/views/root_view.dart';
import 'package:threadofon/modules/search/bindings/search_binding.dart';
import 'package:threadofon/modules/search/views/search_view.dart';
import 'package:threadofon/modules/setting/view/setting_view.dart';
import 'package:threadofon/modules/type_thread/bindings/type_thread_binding.dart';
import 'package:threadofon/modules/type_thread/views/type_thread_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: '/',
        page: () => RootView(),
        binding: RootBinding(),
        participatesInRootNavigator: true,
        preventDuplicates: true,
        children: [
          GetPage(
          
              preventDuplicates: true,
              name: _Paths.HOME,
              page: () => const HomeView(),
              bindings: [
                HomeBinding(),
              ],
              children: [
                GetPage(
                  name: _Paths.TYPE_THREAD,
                  page: () => const TypeThreadView(),
                  binding: TypeThreadBinding(),
                ),
                GetPage(
                  name: _Paths.SEARCH,
                  page: () => SearchView(),
                  binding: SearchBinding(),
                ),
                GetPage(
                  name: _Paths.FAVORITE,
                  page: () => const TypeThreadView(),
                  binding: TypeThreadBinding(),
                ),
                GetPage(
                  name: _Paths.SETTING,
                  page: () => const SettingView(),
                  // binding: SettingBinding(),
                ),
              ]),
        ])
  ];
}
