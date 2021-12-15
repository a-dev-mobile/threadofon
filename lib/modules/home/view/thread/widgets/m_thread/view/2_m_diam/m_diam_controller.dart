import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sqflite/sqflite.dart';
import 'package:threadofon/core/constants/storage.dart';
import 'package:threadofon/core/utils/app_log.dart';
import 'package:threadofon/core/utils/app_utils.dart';

class MDiamController extends GetxController {
  var isLoad = true.obs;
  RxList<String> listDiam = <String>[].obs;
  var isError = false.obs;

  Future<void> _onDiamFetched() async {
    try {
      isLoad.value = true;

      listDiam.value = await _fetchMDiams();
      isLoad.value = false;
    } catch (e) {
      logger.e(e);
      isError.value = true;
    }
  }

  @override
  void onInit() async {
    _onDiamFetched();
    super.onInit();
  }

  Future<List<String>> _fetchMDiams() async {
    String pathDB = GetStorage().read(ConstStorage.keyPathDB);

    var db = await openDatabase(pathDB);
    List<Map> queryResult = await db.rawQuery('''
 select [Range_1] as diam from  [isoNormal] WHERE diam is NOT NULL
 UNION  
 select [Range_2] as diam from [isoNormal] WHERE diam is NOT NULL
 UNION 
 select [Range_3] as diam from  [isoNormal] WHERE diam is NOT NULL
 UNION 
 select [Range_1] as diam from [isoSmail] WHERE diam is NOT NULL
 UNION  
 select [Range_2] as diam from  [isoSmail] WHERE diam is NOT NULL
''');

    await db.close();

    if (queryResult.isEmpty) throw Exception('error fetching mDiams');

    List<String> diams = [];
    double value = 0;
    for (var item in queryResult) {
      value = item['diam'] as double;
      diams.add(AppUtilsNumber.getFormatNumber(value, 2));

      // diams.add(item['diam'] as String);

    }

    return diams;
  }
}
