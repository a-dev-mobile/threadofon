import 'package:get/get.dart';
import 'package:threadofon/modules/120_m_thread_diam/controllers/m_thread_diam_controller.dart';

class MThreadDiamBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MThreadDiamController>(() => MThreadDiamController());
  }
}
