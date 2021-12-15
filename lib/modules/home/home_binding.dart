import 'package:get/get.dart';


import 'controllers/home_controller.dart';
import 'view/thread/thread_controller.dart';
import 'view/thread/view/m_thread/view/1_m_type/m_type_controller.dart';
import 'view/thread/view/m_thread/view/2_m_diam/m_diam_controller.dart';


class HomeBinding implements Bindings {
  @override
  void dependencies()  {
 

    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ThreadController>(() => ThreadController());
    Get.lazyPut<MTypeController>(() => MTypeController());
    Get.lazyPut<MDiamController>(() => MDiamController());
  }
}
