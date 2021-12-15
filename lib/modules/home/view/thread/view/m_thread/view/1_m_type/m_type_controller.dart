import 'package:enum_to_string/enum_to_string.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:threadofon/core/constants/storage.dart';

enum MTypeThread { none, bolt, nuts }

class MTypeController extends GetxController {
  var _mTypeThread = MTypeThread.none;
  var isNuts = false.obs;
  var isBolt = false.obs;

  void setBoltActive() {
    _mTypeThread = MTypeThread.bolt;
    isBolt.value = true;
    isNuts.value = false;
    _saveToLocal();
  }

  void setNutsActive() {
    _mTypeThread = MTypeThread.nuts;
    isBolt.value = false;
    isNuts.value = true;
    _saveToLocal();
  }

  void setResetMTypeThread() {
    _mTypeThread = MTypeThread.none;
    isBolt.value = false;
    isNuts.value = false;
    _saveToLocal();
  }

  void _saveToLocal() {
    GetStorage().write(ConstStorage.keyMTypeThread,
        EnumToString.convertToString(_mTypeThread));
  }

  @override
  void onInit() {
    String enumString = GetStorage().read(ConstStorage.keyMTypeThread) ??
        EnumToString.convertToString(MTypeThread.none);

    _mTypeThread = EnumToString.fromString(MTypeThread.values, enumString)!;

    startValueTypeThread();

    super.onInit();
  }

  void startValueTypeThread() {
    switch (_mTypeThread) {
      case MTypeThread.bolt:
        setBoltActive();
        break;

      case MTypeThread.nuts:
        setNutsActive();
        break;
      case MTypeThread.none:
        setResetMTypeThread();
        break;
    }
  }
}
