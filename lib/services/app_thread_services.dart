import 'package:get/get.dart';

class AppThreadService extends GetxService {
  static AppThreadService get to => Get.find();

  String abrvThread = '';
  String svgThread = '';
  bool isExternalThread = false;
  String diamThread = '';

  Future<AppThreadService> init() async {
    return this;
  }
}
