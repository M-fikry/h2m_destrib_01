import 'package:flutter/material.dart';

import '../../../../../core/Theming/colors.dart';
import '../../../../../core/Theming/styles.dart';

class SalesFilterBar extends StatelessWidget {
  const SalesFilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'حركة الوارد',
          style: TextStyles.font18white,
        ),
        TextButton(
            onPressed: () {},
            child: const Icon(Icons.filter_alt_sharp,
                color: ColorManager.mainGold))
      ],
    );
  }
}
