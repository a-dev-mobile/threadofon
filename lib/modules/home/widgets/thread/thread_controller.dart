import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:threadofon/core/constants/storage.dart';


class ThreadController extends GetxController {
  var selectItem = 0.obs;

  void setLastItem({required int index}) {
    selectItem.value = index;
    GetStorage().write(ConstStorage.keyIndexLastItemThread, index);
  }


  @override
  void onInit() {
    selectItem.value =
        GetStorage().read(ConstStorage.keyIndexLastItemThread) ?? 0;
    super.onInit();
  }
}
