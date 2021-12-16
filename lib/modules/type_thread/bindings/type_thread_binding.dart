import 'package:get/get.dart';

import '../controllers/type_thread_controller.dart';

class TypeThreadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TypeThreadController>(
      () => TypeThreadController(),
    );
  }
}
