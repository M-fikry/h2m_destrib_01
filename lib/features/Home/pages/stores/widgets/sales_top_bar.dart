import 'package:flutter/material.dart';

import '../../../../../core/Theming/colors.dart';
import '../../../../../core/Theming/styles.dart';

class SalesTopBar extends StatelessWidget {
  const SalesTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'مرحبا Admin',
              style: TextStyles.font24white,
            ),
            Text(
              'حركة الأصناف',
              style: TextStyles.font18white,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          child: InkWell(
            onTap: () {},
            child: const Icon(
              Icons.add,
              color: ColorManager.mainRed,
            ),
          ),
        )
      ],
    );
  }
}
