import 'package:get/get.dart';

import 'db_copy_controller.dart';

class DbCopyBinding implements Bindings {
  @override
  void dependencies() async {
    Get.put(DBCopyController());
  }
}
