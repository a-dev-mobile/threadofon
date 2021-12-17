import 'package:get/get.dart';
import 'package:threadofon/modules/130_m_thread_pitch/controllers/m_thread_pitch_controller.dart';

class MThreadPitchBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MThreadPitchController>(() => MThreadPitchController());
  }
}
