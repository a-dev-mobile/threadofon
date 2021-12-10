import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:threadofon/app/app.dart';
import 'package:threadofon/core/widgets/button/btn_large_secondary.dart';

import 'cubit/m_type_cubit.dart';

class MTypeWidget extends StatelessWidget {
  const MTypeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChoiceChip(
                  label: const Text('наружняя'),
                  selected: isBolt,
                  onSelected: (select) {
                    if (select) context.read<MTypeCubit>().isBoltActive();
                  },
                ),
                ChoiceChip(
                  label: const Text('внутренняя'),
                  selected: !isBolt,
                  onSelected: (bool select) {
                    if (select) context.read<MTypeCubit>().isNutsActive();
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
