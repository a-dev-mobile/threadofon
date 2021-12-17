import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:threadofon/app/routes/app_pages.dart';

import '../controllers/root_controller.dart';
import 'drawer.dart';

class RootView extends GetView<RootController> {
  const RootView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var title;
    return GetRouterOutlet.builder(
      builder: (context, delegate, current) {
        title = current?.location;
        print(title);
        // if (title == '/home') Get.back();

        return GetRouterOutlet(
          initialRoute: Routes.HOME,
          // anchorRoute:Routes.HOME,
          // filterPages: (afterAnchor) {
          //   return afterAnchor.take(2);
          // },
        );
      },
    );
  }

  Future<bool> _onWillPop(BuildContext context) async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Are you sure?'),
            content: Text('Do you want to exit an App'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }
}
