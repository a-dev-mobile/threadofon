import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:threadofon/app/routes/app_pages.dart';
import 'package:threadofon/modules/search/controllers/search_controller.dart';



class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'ProfileView is working',
              style: TextStyle(fontSize: 20),
            ),
            Hero(
              tag: 'heroLogo',
              child: const FlutterLogo(),
            ),
            MaterialButton(
              child: Text('Show a test dialog'),
              onPressed: () {
                //shows a dialog
                Get.defaultDialog(
                  title: 'Test Dialog !!',
                  barrierDismissible: true,
                );
              },
            ),
            MaterialButton(
              child: Text('Show a test dialog in Home router outlet'),
              onPressed: () {
                //shows a dialog

                Get.defaultDialog(
                  title: 'Test Dialog In Home Outlet !!',
                  barrierDismissible: true,
                  navigatorKey: Get.nestedKey(Routes.HOME),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
