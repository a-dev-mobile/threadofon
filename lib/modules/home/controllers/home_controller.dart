
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:threadofon/core/constants/storage.dart';
import 'package:threadofon/core/utils/app_log.dart';


class HomeController extends GetxController {
  var selectTab = 0.obs;


  @override
  void onInit() {
    log.i('onInit home controller');
    selectTab.value =
        GetStorage().read(ConstStorage.keyIndexLastItemHome) ?? 0;

    super.onInit();
  }

  void setSelectItem({required int index}) {
    selectTab.value = index;
    GetStorage().write(ConstStorage.keyIndexLastItemHome, index);
  }
}
