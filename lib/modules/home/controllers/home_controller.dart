import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:threadofon/core/constants/storage.dart';
import 'package:threadofon/core/utils/app_log.dart';
import 'package:threadofon/modules/home/widgets/thread/thread_widget.dart';



enum DBCopyStatus { initial, load, success, error }

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
