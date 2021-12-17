// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
    Routes._();
  static const HOME = _Paths.HOME;

  static const THREADS = _Paths.HOME + _Paths.THREADS;
  static const M_THREAD_TYPE = _Paths.HOME + _Paths.THREADS + _Paths.M_THREAD_TYPE;
  
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
  static const M_THREAD_TYPE = '/:m_thread_type';
}
