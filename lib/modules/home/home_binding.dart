import 'package:get/get.dart';
import 'package:threadofon/modules/home/widgets/thread/thread_controller.dart';

import 'home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ThreadController>(() => ThreadController());
  }
}
