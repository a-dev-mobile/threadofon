import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:threadofon/app/routes/app_pages.dart';
import 'package:threadofon/config/app_text_style.dart';
import 'db_copy_controller.dart';

class DbCopyPage extends GetView<DBCopyController> {
  const DbCopyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.copyDBToLocal();

    return Scaffold(
      appBar: AppBar(title: const Text('Copy DB'),),
      body: Center(
        child: Obx(
          () {
            String text;
            switch (controller.dbCopyStatus.value) {
              case DBCopyStatus.initial:
                text = 'init copy DB';
                break;
              case DBCopyStatus.load:
                text = 'load copy DB';
                break;
              case DBCopyStatus.error:
                text = 'error copy DB';
                break;
              case DBCopyStatus.success:
              case DBCopyStatus.skip:
                text = 'ok copy DB';
                break;
            }

            return Text(text, style: AppTextStyle.H2());
          },
        ),
      ),
    );
  }
}
