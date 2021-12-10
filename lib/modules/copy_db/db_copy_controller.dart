import 'dart:io';

import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:threadofon/app/routes/app_pages.dart';
import 'package:threadofon/core/constants/common.dart';
import 'package:threadofon/core/constants/storage.dart';
import 'package:threadofon/core/utils/app_log.dart';
import 'package:threadofon/modules/home/widgets/thread/thread_widget.dart';

enum DBCopyStatus { initial, load, success, error, skip }

class DBCopyController extends GetxController {
  var dbCopyStatus = DBCopyStatus.initial.obs;

  @override
  void onInit() {
    super.onInit();
    _monitoring();

    log.i('onInit DBCopyController');

    String enumString = GetStorage().read(ConstStorage.keyIsDBCopyStatus) ??
        EnumToString.convertToString(DBCopyStatus.initial);

        //not save if debug
    if (!ConstCommon.isDebug) {
      dbCopyStatus.value =
          EnumToString.fromString(DBCopyStatus.values, enumString)!;
    }
    log.i('onInit dbCopyStatus ${dbCopyStatus.value}');
  }

  void _monitoring() {
    ever(
      dbCopyStatus,
      (value) async {
        if (value == DBCopyStatus.skip) {
          Get.offAllNamed(Routes.HOME);
        }
      },
    );
  }

  Future<void> copyDBToLocal() async {
    log.i('statrt copyDBToLocal');
    // read for need or not copy db

    await delay(sec: 1);

    if (dbCopyStatus.value == DBCopyStatus.success) return;
    // =======================
    dbCopyStatus.value = DBCopyStatus.load;
    // =======================
    await delay(sec: 1);

    String pathFrom = 'assets/db/';
    String nameDB = 'thread.db';

    try {
      ByteData data = await rootBundle.load('$pathFrom$nameDB');
      String dir = (await getApplicationSupportDirectory()).path;

      String pathTo = '$dir/$nameDB';

      final buffer = data.buffer;
      File(pathTo).writeAsBytes(
          buffer.asUint8List(data.offsetInBytes, data.lengthInBytes));

      //save patch DB
      GetStorage().write(ConstStorage.keyPathDB, pathTo);

      // =======================

      dbCopyStatus.value = DBCopyStatus.success;
      await delay(sec: 1);
      dbCopyStatus.value = DBCopyStatus.skip;
      // =======================
    } catch (e) {
      // =======================
      dbCopyStatus.value = DBCopyStatus.error;
      // =======================

    }

    GetStorage().write(ConstStorage.keyIsDBCopyStatus,
        EnumToString.convertToString(dbCopyStatus.value));

    log.i(' end copy DB');
  }

  Future<void> delay({int sec = 5}) async {
    log.w('start ${dbCopyStatus.value}');

    await Future.delayed(Duration(seconds: sec), () {});
  }
}
