import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:threadofon/services/app_services.dart';

import '../../../config/app_text_style.dart';
import '../../constants/colors.dart';
import '../button/btn_list_tile.dart';

class LangSwitchWidget extends StatelessWidget {
  const LangSwitchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BtnListTile(
      onTap: () {
        Navigator.of(context).restorablePush(_dialogBuilderSelectLang);
      },
      leading: const Icon(Icons.language),
      text: AppLocalizations.of(context)!.app_lang,
      trailing: const Icon(Icons.chevron_right),
    );
  }

  static Route<Object?> _dialogBuilderSelectLang(
      BuildContext context, Object? arguments) {
    return DialogRoute<void>(
      context: context,
      builder: (BuildContext context) => SimpleDialog(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? ConstColor.neutral_grey_800
            : ConstColor.neutral_white,
        title: Text(
          AppLocalizations.of(context)!.app_lang,
          style: AppTextStyle.H3_BOLD(),
        ),
        children: [
          SimpleDialogOption(
            onPressed: () {
              AppServices.to.setLocaleRU();
              // Navigator.pop(context);
              Get.back();
            },
            child: Text(
              AppLocalizations.of(context)!.lang_ru,
              style: AppTextStyle.BODY_SEMI_BOLD(),
            ),
          ),
          SimpleDialogOption(
            onPressed: () {
              AppServices.to.setLocaleEN();
               Get.back();
              // Navigator.pop(context);
            },
            child: Text(
              AppLocalizations.of(context)!.lang_en,
              style: AppTextStyle.BODY_SEMI_BOLD(),
            ),
          ),
        ],
      ),
    );
  }
}
