import 'package:get/get.dart';
import 'package:threadofon/modules/110_m_thread_type/controllers/m_thread_type_controller.dart';


class MThreadTypeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MThreadTypeController>(() => MThreadTypeController());
  }
}
