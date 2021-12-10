import 'package:get/get.dart';
import 'package:threadofon/modules/home/widgets/thread/thread_controller.dart';


import 'controllers/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() async {
    // await Get.putAsync(() async {
    //   final instance = DBCopyController();
    //   await instance.copyDBToLocal();
    //   return instance;
    // }, permanent: true);


    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ThreadController>(() => ThreadController());
  }
}
