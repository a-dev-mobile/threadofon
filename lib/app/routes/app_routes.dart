// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;

  static const THREADS = _Paths.HOME + _Paths.THREADS;
  static String M_THREAD_TYPE (String abrv)=> '$THREADS/$abrv';
  // static const M_THREAD_DIAM = M_THREAD_TYPE + _Paths.M_THREAD_DIAM;

  static const SETTING = _Paths.HOME + _Paths.SETTING;
  static const FAVORITE = _Paths.HOME + _Paths.FAVORITE;
  static const SEARCH = _Paths.HOME + _Paths.SEARCH;
}

abstract class _Paths {
  static const HOME = '/home';

  static const THREADS = '/threads';
  static const SETTING = '/setting';
  static const FAVORITE = '/favorite';
  static const SEARCH = '/search';
  static const M_THREAD_TYPE = '/:abrvm_thread_type';
  static const M_THREAD_DIAM = '/m_thread_diam';
}
