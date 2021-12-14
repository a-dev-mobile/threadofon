import 'dart:ui';

import 'package:file_copy/file_copy.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:threadofon/core/constants/common.dart';
import 'package:threadofon/core/constants/storage.dart';

class DbServices extends GetxService {
  static DbServices get to => Get.find();

  String patchDb = '';

  Future<DbServices> init() async {
   
    patchDb = GetStorage().read(ConstStorage.keyPathDB) ?? "";
    if (patchDb.isEmpty) {
      await _copyDB();
    }

    return this;
  }

  Future<void> _copyDB() async {
    String patchTo = (await getApplicationSupportDirectory()).path;
    String nameFile = 'thread.db';
    String pathFrom = 'assets/db/';

    FileCopy fileCopy = FileCopy();
    fileCopy.fileCopyToMobileLocal(
      pathFrom: pathFrom,
      pathTo: patchTo,
      nameFile: nameFile,
    );
    GetStorage().write(ConstStorage.keyPathDB, patchTo + nameFile);
  }
}
