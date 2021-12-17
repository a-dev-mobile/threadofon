import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:threadofon/app/routes/app_pages.dart';


import '../controllers/root_controller.dart';
import 'drawer.dart';


class RootView extends GetView<RootController> {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, current) {
        final title = current?.location;
        return GetRouterOutlet(
            initialRoute: Routes.HOME,
            // anchorRoute: '/',
            // filterPages: (afterAnchor) {
            //   return afterAnchor.take(1);
            // },
          
        );
      },
    );
  }
}
