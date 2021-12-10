import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:threadofon/core/constants/storage.dart';
import 'package:threadofon/modules/home/widgets/thread/thread_widget.dart';

import 'widgets/setting/view/setting_view.dart';

class HomeController extends GetxController {
  var selectItem = 0.obs;

  @override
  void onInit() {
    selectItem.value =
        GetStorage().read(ConstStorage.keyIndexLastItemHome) ?? 0;
    super.onInit();
  }

  void setSelectItem({required int index}) {
    selectItem.value = index;
    GetStorage().write(ConstStorage.keyIndexLastItemHome, index);
  }
}
