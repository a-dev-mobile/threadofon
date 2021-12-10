import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:threadofon/modules/home/home_controller.dart';
import 'package:threadofon/modules/home/widgets/thread/thread_widget.dart';
import '../../../core/constants/colors.dart';
import 'widgets/setting/view/setting_view.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  List<Widget> get _tabs => [
        const ThreadView(),
        const ThreadView(),
        const ThreadView(),
        const SettingView(),
      ];
 
  @override
  Widget build(BuildContext context) {
    var brightness = Theme.of(context).brightness;
    bool isDarkMode = brightness == Brightness.dark;
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: const Size(360, 690),
        orientation: Orientation.portrait);

    return Obx(() => Scaffold(
          body: IndexedStack(
            index: controller.selectItem.value,
            children: _tabs,
          ),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(
                        color: ColorConstants.neutral_grey_400, width: 0.5))),
            child: BottomNavigationBar(
              elevation: 0,
              unselectedItemColor: ColorConstants.neutral_grey_400,
              currentIndex: controller.selectItem.value,
              selectedItemColor: isDarkMode
                  ? ColorConstants.primary_301
                  : ColorConstants.primary_500,
              onTap: (index) {
                controller.setSelectItem(index: index);
              },
              items: [
                BottomNavigationBarItem(
                    icon: const Icon(Icons.home),
                    label: AppLocalizations.of(context)!.main),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.search),
                  label: AppLocalizations.of(context)!.search,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.favorite),
                  label: AppLocalizations.of(context)!.favorite,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.setting,
                ),
              ],
            ),
          ),
        ));
  }
}
