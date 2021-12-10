import 'package:get/get.dart';
import 'package:threadofon/modules/home/widgets/thread/thread_controller.dart';
import 'package:threadofon/modules/home/widgets/thread/widgets/m_thread/page_view/1_m_type/m_type_controller.dart';
import 'package:threadofon/modules/home/widgets/thread/widgets/m_thread/page_view/2_m_diam/m_diam_controller.dart';


import 'controllers/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies()  {
 

    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ThreadController>(() => ThreadController());
    Get.lazyPut<MTypeController>(() => MTypeController());
    Get.lazyPut<MDiamController>(() => MDiamController());
  }
}
