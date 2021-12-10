import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert' as convert;


abstract class AppUtilsString {
  static String removeDecimalZeroFormat(double n) {
    return n.toStringAsFixed(n.truncateToDouble() == n ? 0 : 1);
  }

  static String removeLastCharacter(String str) {
    String result = '';
    if ((str != '') && (str.isNotEmpty)) {
      result = str.substring(0, str.length - 1);
    }

    return result;
  }

  static String getLastCharacter(String str) {
    String result = '';
    if ((str != '') && (str.isNotEmpty)) {
      result = str.substring(str.length - 1);
    }

    return result;
  }

  static String getFirstCharacter(String str) {
    String result = '';
    if ((str != '') && (str.isNotEmpty)) {
      result = str.substring(0);
    }

    return result;
  }

  static String addZeroIsFirstDecimal(String text) {
    if (AppUtilsString.getFirstCharacter(text) == '.') {
      return text = '0' + text;
    } else {
      return text;
    }
  }
}

class AppUtilsJson {
  static Future<dynamic> getJsonFile(String path) async {
    return rootBundle.loadString(path).then(convert.jsonDecode);
  }
}

class AppUtilsNumber {
  static String getFormatNumber(double num, int numberDigitsAfterPoint) {
// округляем, но нет удаления конечных нулей
    String num2 = num.toStringAsFixed(numberDigitsAfterPoint);
    // если нет точки возвращаем
    if (!num2.contains('.')) return num2;

    var s = num2.split('.');
    String mainResult = num2;
    // проверяем есть ли последние нули
    if (AppUtilsString.getLastCharacter(s[1]) == '0') {
      String oldString = "";
      String newString = "";
      oldString = s[1];

      for (int i = 0; i < s[1].length; i++) {
        if (AppUtilsString.getLastCharacter(oldString) == '0') {
          newString = AppUtilsString.removeLastCharacter(oldString);
        } else {
          break;
        }
        oldString = newString;
      }
// действия, если после ни чего ни осталось оставляем split 0
      if (newString.isEmpty) {
        mainResult = s[0];
      } else {
        mainResult = s[0] + "." + newString;
      }
    }

    return mainResult;
  }
}

class AppUtilsParse {


  static Color color(String hexCode, {double opacity = 1}) {
    try {
      return Color(int.parse(hexCode.replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }




}

class AppUtilsMap {
  static Map<int, dynamic> updateValues(
      {required Map<int, dynamic> oldMap,
      required var oldValue,
      required var newValue}) {
    Map<int, dynamic> newMap = {}..addAll(oldMap);
    List<int> keyList = [];

    for (var e in oldMap.entries) {
      if (e.value == oldValue) {
        keyList.add(e.key);
      }
    }
    for (var key in keyList) {
      newMap[key] = newValue;
    }
    return newMap;
  }

  static Map<int, dynamic> moveValue(
      {required Map<int, dynamic> oldMap,
      required var moveValue,
      required bool isPositionStart}) {
    // if (!oldMap.containsValue(moveValue) || oldMap.isEmpty) {
    //   throw Exception(
    //       "{{{{{{{{{{ map empty or not contains value = $moveValue }}}}}}}}}}");
    // }

    Map<int, dynamic> mapWithoutMoveValue = {};
    List<int> keyListMoveValue = [];

    int i = 1;

    for (var e in oldMap.entries) {
      if (e.value == moveValue) {
        keyListMoveValue.add(e.key);
      } else {
        mapWithoutMoveValue[i] = e.value;
        i++;
      }
    }
    Map<int, dynamic> mapWithMoveValue = {};
    i = 1;

    if (isPositionStart) {
      for (var key in keyListMoveValue) {
        mapWithMoveValue[i] = moveValue;
        i++;
      }
      for (var e in mapWithoutMoveValue.entries) {
        mapWithMoveValue[i] = e.value;
        i++;
      }
    } else {
      for (var e in mapWithoutMoveValue.entries) {
        mapWithMoveValue[i] = e.value;
        i++;
      }
      for (var key in keyListMoveValue) {
        mapWithMoveValue[i] = moveValue;
        i++;
      }
    }

    return mapWithMoveValue;
  }
}
