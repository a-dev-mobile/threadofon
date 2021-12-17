
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:threadofon/core/constants/storage.dart';

class MThreadTypeController extends GetxController {
  var isBolt = false.obs;

  void setBoltActive() {
    isBolt.value = true;
    _saveToLocal();
  }

  void setNutsActive() {
    isBolt.value = false;
    _saveToLocal();
  }

  void _saveToLocal() {
    GetStorage().write(ConstStorage.keyIsBoltMThread, isBolt.value);
  }

  @override
  void onInit() {
    isBolt.value =
        GetStorage().read(ConstStorage.keyIsBoltMThread) ?? isBolt.value;

    super.onInit();
  }
}
