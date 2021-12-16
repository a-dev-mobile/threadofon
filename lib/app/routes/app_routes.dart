// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  static const HOME = _Paths.HOME;
    static const TYPE_THREAD = _Paths.HOME + _Paths.TYPE_THREAD;
    static const SETTING = _Paths.HOME + _Paths.SETTING;
    static const FAVORITE = _Paths.HOME + _Paths.FAVORITE;
    static const SEARCH = _Paths.HOME + _Paths.SEARCH;
}

abstract class _Paths {
  static const HOME = '/home';

  static const TYPE_THREAD = '/type_thread';
  static const SETTING = '/setting';
  static const FAVORITE = '/favorite';
  static const SEARCH = '/search';
}
