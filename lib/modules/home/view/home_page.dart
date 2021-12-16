import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:threadofon/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';

class  HomeView extends GetView<HomeController> {
  const  HomeView({Key? key}) : super(key: key);



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

    return  GetRouterOutlet.builder(builder: (context, delegate, currentRoute) {
             final currentLocation = currentRoute?.location;
        var currentIndex = 0;
        if (currentLocation?.startsWith(Routes.SETTING) == true) {
          currentIndex = 3;
        }
        if (currentLocation?.startsWith(Routes.FAVORITE) == true) {
          currentIndex = 2;
        }

if (currentLocation?.startsWith(Routes.SEARCH) == true) {
          currentIndex = 1;
        }

return Scaffold(

  body: GetRouterOutlet(
            initialRoute: Routes.TYPE_THREAD,
            // anchorRoute: Routes.HOME,
            key: Get.nestedKey(Routes.HOME),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              switch (value) {
                case 0:
                  delegate.toNamed(Routes.HOME);
                  break;
                case 1:
                  delegate.toNamed(Routes.SEARCH);
                  break;
                case 2:
                  delegate.toNamed(Routes.FAVORITE);
                  break;
                  case 3:
                  delegate.toNamed(Routes.SETTING);
                  break;
                default:
              }
            },   items: const [
              // _Paths.HOME + [Empty]
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Type thread',
              ),
              // _Paths.HOME + Routes.PROFILE
              BottomNavigationBarItem(
                icon: Icon(Icons.account_box_rounded),
                label: 'Search',
              ),
              // _Paths.HOME + _Paths.PRODUCTS
              BottomNavigationBarItem(
                icon: Icon(Icons.account_box_rounded),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_box_rounded),
                label: 'Setting',
              ),
            ],
          ),
        );
      },
    );
  }
}

// 
// Scaffold(
//           body: IndexedStack(
//             index: controller.selectTab.value,
//             children: _tabs,
//           ),
//           bottomNavigationBar: Container(
//             decoration: const BoxDecoration(
//                 border: Border(
//                     top: BorderSide(
//                         color: ConstColor.neutral_grey_400, width: 0.5))),
//             child: BottomNavigationBar(
//               elevation: 0,
//               unselectedItemColor: ConstColor.neutral_grey_400,
//               currentIndex: controller.selectTab.value,
//               selectedItemColor:
//                   isDarkMode ? ConstColor.primary_301 : ConstColor.primary_500,
//               onTap: (index) {
//                 controller.selectTab.value = index;
//               },
//               items: [
//                 BottomNavigationBarItem(
//                     icon: const Icon(Icons.home), label: TranslateHelper.main),
//                 BottomNavigationBarItem(
//                   icon: const Icon(Icons.search),
//                   label: TranslateHelper.search,
//                 ),
//                 BottomNavigationBarItem(
//                   icon: const Icon(Icons.favorite),
//                   label: TranslateHelper.favorite,
//                 ),
//                 BottomNavigationBarItem(
//                   icon: const Icon(Icons.settings),
//                   label: TranslateHelper.setting,
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }
