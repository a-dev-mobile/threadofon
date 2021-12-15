

abstract class AppUtilsString {


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
