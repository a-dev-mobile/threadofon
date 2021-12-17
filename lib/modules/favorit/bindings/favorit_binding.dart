import 'package:get/get.dart';
import 'package:threadofon/modules/favorit/controllers/favorit_controller.dart';

class FavoritBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavoritController>(() => FavoritController());
  }
}
