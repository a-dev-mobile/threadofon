import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/type_thread_controller.dart';

class TypeThreadView extends GetView<TypeThreadController> {
  const TypeThreadView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'TypeThread is working',
                style: TextStyle(fontSize: 20),
              ),
              Text('Time: ${controller.now.value.toString()}'),
            ],
          ),
        ),
      ),
    );
  }
}
