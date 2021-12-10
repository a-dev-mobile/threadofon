import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:threadofon/presentation/home/view/setting/view/setting_view.dart';
import 'package:threadofon/presentation/home/view/thread/thread_view.dart';
import '../../../core/constants/colors.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
List<Widget> screen = [
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

    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: screen,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border: Border(
                top: BorderSide(
                    color: ColorConstants.neutral_grey_400, width: 0.5))),
        child: BottomNavigationBar(
          elevation: 0,
          unselectedItemColor: ColorConstants.neutral_grey_400,
          currentIndex: _selectedIndex,
          selectedItemColor: isDarkMode
              ? ColorConstants.primary_301
              : ColorConstants.primary_500,
          onTap: (index) => setState(() => _selectedIndex = index),
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
    );
  }
}
