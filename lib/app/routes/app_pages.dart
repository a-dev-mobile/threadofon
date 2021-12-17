// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:threadofon/modules/100_threads/bindings/threads_binding.dart';
import 'package:threadofon/modules/100_threads/views/threads_view.dart';
import 'package:threadofon/modules/110_m_thread_type/bindings/m_thread_type_binding.dart';
import 'package:threadofon/modules/110_m_thread_type/view/m_thread_type_view.dart';
import 'package:threadofon/modules/120_m_thread_diam/bindings/m_thread_diam_binding.dart';
import 'package:threadofon/modules/120_m_thread_diam/view/m_thread_diam_view.dart';
import 'package:threadofon/modules/130_m_thread_pitch/bindings/m_thread_pitch_binding.dart';
import 'package:threadofon/modules/130_m_thread_pitch/view/m_thread_pitch_view.dart';
import 'package:threadofon/modules/favorit/bindings/favorit_binding.dart';
import 'package:threadofon/modules/favorit/view/favorit_view.dart';
import 'package:threadofon/modules/home/bindings/home_binding.dart';
import 'package:threadofon/modules/home/view/home_view.dart';
import 'package:threadofon/modules/root/bindings/root_binding.dart';
import 'package:threadofon/modules/root/views/root_view.dart';
import 'package:threadofon/modules/search/bindings/search_binding.dart';
import 'package:threadofon/modules/search/views/search_view.dart';
import 'package:threadofon/modules/setting/view/setting_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: '/',
        page: () => const RootView(),
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
                  name: _Paths.THREADS,
                  page: () => const ThreadsView(),
                  binding: ThreadsBinding(),
                  children: [
                    GetPage(
                        name: _Paths.M_THREAD_TYPE,
                        page: () => const MThreadTypeView(),
                        transition: Transition.rightToLeft,
                        binding: MThreadTypeBinding(),
                        children: [
                          GetPage(
                              name: _Paths.M_THREAD_DIAM,
                              page: () => const MThreadDiamView(),
                              transition: Transition.rightToLeft,
                              binding: MThreadDiamBinding(),
                              children: [
                                GetPage(
                                    name: _Paths.M_THREAD_PITCH,
                                    page: () => const MThreadPitchView(),
                                    transition: Transition.rightToLeft,
                                    binding: MThreadPitchBinding())
                              ])
                        ])
                  ],
                ),
                GetPage(
                  name: _Paths.SEARCH,
                  page: () => SearchView(),
                  binding: SearchBinding(),
                ),
                GetPage(
                  name: _Paths.FAVORITE,
                  page: () => const FavoritView(),
                  binding: FavoritBinding(),
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
