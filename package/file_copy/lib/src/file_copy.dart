import 'dart:io';


import 'package:flutter/services.dart';
import 'package:logger/logger.dart';

/// Exception thrown when copying fails
// class DbNotCopy implements Exception {}

class FileCopy {
  final Logger _log = Logger();

  Future<void> fileCopyToMobileLocal(
      {required String pathFrom,
      required String pathTo,
      required String nameFile}) async {
        
    _log.i('start copy file $nameFile');
    try {
      ByteData data = await rootBundle.load('$pathFrom$nameFile');
      String fullPath = '$pathTo/$nameFile';
      final buffer = data.buffer;
      File(fullPath).writeAsBytes(
          buffer.asUint8List(data.offsetInBytes, data.lengthInBytes));
    } catch (e) {
      _log.e(e);
    }

    _log.i('end copy  file $nameFile');
  }
}
