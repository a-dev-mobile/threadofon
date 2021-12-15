import 'package:sqflite/sqflite.dart';
import 'package:thredofon_repository/src/utils/app_utils.dart';

import 'models/m_diams.dart';

class MThreadRepository {
  final String pathDB;

  MThreadRepository({required this.pathDB});

  Future<List<MDiamModel>> fetchMDiams() async {
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

    List<MDiamModel> mDiams = [];
    double value = 0;
    for (var item in queryResult) {
      value = item['diam'] as double;
      mDiams.add(MDiamModel(diam: AppUtilsNumber.getFormatNumber(value, 2)));

    }

    return mDiams;
  }
}
