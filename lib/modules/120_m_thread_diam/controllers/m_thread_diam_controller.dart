import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:threadofon/core/constants/storage.dart';
import 'package:threadofon/core/utils/app_log.dart';
import 'package:thredofon_repository/thredofon_repository.dart';

class MThreadDiamController extends GetxController {
  var isLoad = true.obs;
  RxList<MDiamModel> listModel = <MDiamModel>[].obs;
  var isError = false.obs;

  final MThreadRepository _repository =
      MThreadRepository(pathDB: GetStorage().read(ConstStorage.keyPathDB));

  Future<void> _onDiamFetched() async {
    try {
      isLoad.value = true;
      listModel.value = await _repository.fetchMDiams();
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

  selectedDiameter(MDiamModel model) {
    final int index = listModel.indexWhere((controllerModel) => controllerModel.diam == model.diam);


    listModel[index] = model.copyWith(isSelected: !model.isSelected);
  }
}
