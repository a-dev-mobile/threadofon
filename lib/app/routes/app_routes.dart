// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  static const HOME = _Paths.HOME;
  static const WELCOME = _Paths.WELCOME;
  static const WARNING = _Paths.WARNING;

}

abstract class _Paths {
  static const HOME = '/home';
  static const WELCOME = '/welcome';
 
  static const WARNING = '/warning';
}


